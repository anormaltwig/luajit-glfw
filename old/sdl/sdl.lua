local ffi = require("ffi")

local events = require("sdl.events")
local video = require("sdl.video")

ffi.cdef([[
	int SDL_Init(unsigned int flags);

	const char *SDL_GetError(void);

	void* SDL_CreateRenderer(void *window, int index, unsigned int flags);
	void SDL_DestroyRenderer(void *renderer);

	void SDL_RenderPresent(void *renderer);
	int SDL_RenderClear(void *renderer);
]])

local init_flags = {
	SDL_INIT_TIMER = 0x00000001,
	SDL_INIT_AUDIO= 0x00000010,
	SDL_INIT_VIDEO = 0x00000020,
	SDL_INIT_JOYSTICK = 0x00000200,
	SDL_INIT_HAPTIC = 0x00001000,
	SDL_INIT_GAMECONTROLLER = 0x00002000,
	SDL_INIT_EVENTS = 0x00004000,
	SDL_INIT_SENSOR = 0x00008000,
	SDL_INIT_NOPARACHUTE = 0x00100000,
}
init_flags.SDL_INIT_EVERYTHING = bit.bor(
	init_flags.SDL_INIT_TIMER,
	init_flags.SDL_INIT_AUDIO,
	init_flags.SDL_INIT_VIDEO,
	init_flags.SDL_INIT_EVENTS,
	init_flags.SDL_INIT_JOYSTICK,
	init_flags.SDL_INIT_HAPTIC,
	init_flags.SDL_INIT_GAMECONTROLLER,
	init_flags.SDL_INIT_SENSOR
)

local sdl = ffi.load("SDL2")

---@return string
local function get_error()
	return ffi.string(sdl.SDL_GetError())
end

--- Initialize SDL
---@param flags number
---@return boolean error true if error occured
local function init(flags)
	return sdl.SDL_Init(flags) < 0
end

---@class Window
local window_meta = {}
window_meta.__index = window_meta

function window_meta:make_current()
	return sdl.SDL_GL_MakeCurrent(self[1]) < 0
end

function window_meta:swap()
	sdl.SDL_GL_SwapWindow(self[1])
end

---@param title string
---@param x number
---@param y number
---@param w number
---@param h number
---@param flags number
---@return Window?, string? window window or nil with error message
local function create_window(title, x, y, w, h, flags)
	local window = sdl.SDL_CreateWindow(title, x, y, w, h, bit.bor(flags, video.SDL_WINDOW_OPENGL))
	if window == nil then
		return nil, get_error()
	end
	ffi.gc(window, sdl.SDL_DestroyWindow)

	local gl_ctx = sdl.SDL_GL_CreateContext(window)
	if gl_ctx == nil then
		return nil, get_error()
	end
	ffi.gc(gl_ctx, sdl.SDL_GL_DeleteContext)

	-- LuaLS is wrong.
	---@diagnostic disable-next-line:return-type-mismatch
	return setmetatable({window, gl_ctx}, window_meta)
end

local event = ffi.new("SDL_Event")
local event_ptr = ffi.cast("SDL_Event*", event)

---@return any
local function poll_event()
	local b = sdl.SDL_PollEvent(event_ptr)

	if b == 1 then
		return event
	end
end

return {
	flags = {
		init = init_flags,
		video = video,
	},
	events = events,

	init = init,
	get_error = get_error,
	create_window = create_window,
	poll_event = poll_event,

	_sdl = sdl,
}
