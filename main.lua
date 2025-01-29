local ffi = require("ffi")

local glfw = require("glfw.glfw")
local glfw_util = require("glfw.util")

local gl = require("gl.gl")
local gl_util = require("gl.util")
local gl_enum = require("gl.enum")
local ext = require("gl.ext")

if not glfw_util.init() then
	error("glfw init failed")
end

local function key_callback(win, key, _, _, _)
	if key == 256 then
		glfw.glfwSetWindowShouldClose(win, 1)
	end
end

local function size_callback(win, w, h)
	glfw.glfwMakeContextCurrent(win)
	gl.glViewport(0, 0, w, h)
end

local window = assert(glfw_util.create_window(800, 600, "LuaJIT GLFW"))
print("window created")
glfw.glfwMakeContextCurrent(window)

glfw.glfwSetKeyCallback(window, key_callback)
glfw.glfwSetWindowSizeCallback(window, size_callback)

ext.load()
print("loaded GL extensions")

local vs_file = assert(io.open("glsl/tri.vs"))
local vs_source = vs_file:read("*a")
vs_file:close()

local fs_file = assert(io.open("glsl/tri.fs"))
local fs_source = fs_file:read("*a")
fs_file:close()

local program, shaders = assert(gl_util.compile_program({
	{vs_source, gl_enum.GL_VERTEX_SHADER},
	{fs_source, gl_enum.GL_FRAGMENT_SHADER},
}))

ext.glUseProgram(program)

local vao = gl_util.gen_vertex_array()
local vbo = gl_util.gen_buffer()

ext.glBindVertexArray(vao)
ext.glBindBuffer(gl_enum.GL_ARRAY_BUFFER, vbo)

local data = ffi.new("float[9]")
data[0] = -0.5
data[1] = -0.5
data[2] = 0.0
data[3] = 0.5
data[4] = -0.5
data[5] = 0.0
data[6] = 0.0
data[7] = 0.5
data[8] = 0.0

ext.glBufferData(gl_enum.GL_ARRAY_BUFFER, ffi.sizeof(data), data, gl_enum.GL_STATIC_DRAW)

ext.glVertexAttribPointer(0, 3, gl_enum.GL_FLOAT, gl_enum.GL_FALSE, 3 * ffi.sizeof("float"), nil)
ext.glEnableVertexAttribArray(0)

-- jit compilation on functions that have lua callbacks cause "bad callback" errors
local function poll_events()
	glfw.glfwPollEvents()
end
jit.off(poll_events) -- Heaven will fall

local clear_bits = bit.bor(gl_enum.GL_COLOR_BUFFER_BIT, gl_enum.GL_DEPTH_BUFFER_BIT)

while glfw.glfwWindowShouldClose(window) == 0 do
	poll_events()

	gl.glClearColor(0.3, 0.7, 1, 1)
	gl.glClear(clear_bits)

	gl.glDrawArrays(gl_enum.GL_TRIANGLES, 0, 3)

	glfw.glfwSwapBuffers(window)
end

gl_util.delete_buffer(vbo)
gl_util.delete_vertex_array(vao)
gl_util.cleanup_program(program, shaders)
glfw.glfwTerminate()
