local ffi = require("ffi")

local glfw = require("glfw.glfw")

local enum = require("glfw.enum")

local last_error
local function glfw_error_callback(_, desc)
	last_error = ffi.string(desc)
end

local function get_error()
	return last_error
end

local function init()
	if glfw.glfwInit() == 0 then
		return false
	end

	glfw.glfwSetErrorCallback(glfw_error_callback)

	glfw.glfwWindowHint(enum.GLFW_CONTEXT_VERSION_MAJOR, 4)
	glfw.glfwWindowHint(enum.GLFW_CONTEXT_VERSION_MINOR, 3)
	glfw.glfwWindowHint(enum.GLFW_OPENGL_PROFILE, enum.GLFW_OPENGL_CORE_PROFILE)
	glfw.glfwWindowHint(enum.GLFW_DECORATED, 0)

	return true
end

local function create_window(w, h, title)
	local window = glfw.glfwCreateWindow(w, h, title, nil, nil)

	if window == nil then
		return nil, last_error
	end
	ffi.gc(window, glfw.glfwDestroyWindow)

	return window
end

local util = {
	enum = enum,
	init = init,
	get_error = get_error,
	create_window = create_window,
}

return util
