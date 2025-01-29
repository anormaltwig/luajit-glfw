local ffi = require("ffi")

local enum = require("gl.enum")
local ext = require("gl.ext")

local buf = ffi.new("GLuint[1]")

local function gen_buffer()
	ext.glGenBuffers(1, buf)
	return buf[0]
end

local function delete_buffer(n)
	buf[0] = n
	ext.glDeleteBuffers(1, buf)
end

local function gen_vertex_array()
	ext.glGenVertexArrays(1, buf)
	return buf[0]
end

local function delete_vertex_array(n)
	buf[0] = n
	ext.glDeleteVertexArrays(1, buf)
end

---@param sources [string, number][] table of tables containing a string source code and a number shader type
---@return integer|nil program, integer[]|string shaders
local function compile_program(sources)
	local shaders = {}

	for _, pair in ipairs(sources) do
		local shader = ext.glCreateShader(pair[2])

		local freaky_array = ffi.new("const GLchar *[1]")
		freaky_array[0] = pair[1]
		ext.glShaderSource(shader, 1, freaky_array, nil)
		ext.glCompileShader(shader)

		local check = ffi.new("GLint[1]")
		ext.glGetShaderiv(shader, enum.GL_COMPILE_STATUS, check)
		if check[0] ~= enum.GL_TRUE then
			local len = ffi.new("GLint[1]")
			ext.glGetShaderiv(shader, enum.GL_INFO_LOG_LENGTH, len);
			len = len[0]

			if len == 0 then
				-- cleanup compiled shaders
				---@diagnostic disable-next-line:redefined-local
				for _, shader in ipairs(shaders) do
					ext.glDeleteShader(shader)
				end

				return nil, "shader compilation failed with no log"
			end

			local char_buf = ffi.new("GLchar[?]", len)
			ext.glGetShaderInfoLog(shader, len, nil, char_buf)

			return nil, ffi.string(char_buf)
		end

		table.insert(shaders, shader)
	end

	local program = ext.glCreateProgram()
	for _, shader in ipairs(shaders) do
		ext.glAttachShader(program, shader)
	end
	ext.glLinkProgram(program)

	local check = ffi.new("GLint[1]")
	ext.glGetProgramiv(program, enum.GL_LINK_STATUS, check)
	if check[0] ~= enum.GL_TRUE then
		local len = ffi.new("GLint[1]")
		ext.glGetProgramiv(program, enum.GL_INFO_LOG_LENGTH, len);
		len = len[0]

		if len == 0 then
			for _, shader in ipairs(shaders) do
				ext.glDeleteShader(shader)
			end

			return nil, "program link failed with no log"
		end

		local char_buf = ffi.new("GLchar[?]", len)
		ext.glGetProgramInfoLog(program, len, nil, char_buf)

		return nil, ffi.string(char_buf)
	end

	return program, shaders
end

---@param program integer
---@param shaders integer[]
local function cleanup_program(program, shaders)
	ext.glDeleteProgram(program)

	for _, shader in ipairs(shaders) do
		ext.glDeleteShader(shader)
	end
end

return {
	gen_buffer = gen_buffer,
	delete_buffer = delete_buffer,

	gen_vertex_array = gen_vertex_array,
	delete_vertex_array = delete_vertex_array,

	compile_program = compile_program,
	cleanup_program = cleanup_program,
}
