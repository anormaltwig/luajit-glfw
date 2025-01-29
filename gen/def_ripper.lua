-- Tool to rip #define statements form header files and put them into a lua table

local file = assert(io.open("/usr/include/GLFW/glfw3.h", "r"))
local content = file:read("*a")
file:close()

local buf = {}
for name, value in string.gmatch(content, "#define%s+(%S+)%s+([^\r\n]+)[\r\n]+") do
	table.insert(buf, string.format("%s = %s", name, value))
end

local out = assert(io.open("glfw_enum.lua", "w"))
out:write("return {\n")
for _, line in ipairs(buf) do
	out:write(string.format("	%s,\n", line))
end
out:write("}")
out:close()
