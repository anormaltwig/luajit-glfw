local headers = {
	["GLFW/glfw3.h"] = "glfw",
	["GL/gl.h"] = "GL",
}

local cpath = io.popen("echo $CPATH"):read("*l")

local pathLookup = {}
for s in string.gmatch(cpath, "[^:]+") do
	pathLookup[s] = true
end

local paths = {}
for path in pairs(pathLookup) do
	table.insert(paths, path)
end

-- Thanks LuaLS!!!
local _ = assert(io.popen("rm -rI out")):read("*a")
local _ = assert(io.popen("mkdir out")):read("*a")

local proc = assert(io.popen("clang -E /usr/include/GLFW/glfw3.h", "r"))
local files = {}

local current_file = ""
for line in proc:lines("*L") do
	local head = string.match(line, "# %d+ \"(%S+)\"")

	if head then
		for header in pairs(headers) do
			if string.match(head, header) and not files[head] then
				local nice = string.format("out/%s", string.gsub(header, "/", "_"))
				files[head] = assert(io.open(nice, "w"))
				break
			end
		end

		current_file = head
	elseif files[current_file] then
		if #line > 1 then -- More than just a newline
			local better_line = string.gsub(line, "^ +", "")
			files[current_file]:write(better_line)
		end
	end
end

proc:close()
