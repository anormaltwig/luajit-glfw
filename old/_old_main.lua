local ffi = require("ffi")

ffi.cdef([[
	int printf(const char *fmt, ...);

	typedef struct {
		long tv_sec;
		long tv_nsec;
	} timespec;

	int nanosleep(const timespec *duration, void *rem);
]])

ffi.C.printf("Hello, World!\n")

local sdl = require("sdl.sdl")
local gl = require("gl")

if sdl.init(sdl.flags.init.SDL_INIT_VIDEO) then
	error(string.format("SDL init failed: %s", sdl.get_error()))
end

sdl._sdl.SDL_GL_SetAttribute(sdl.flags.video.SDL_GL_CONTEXT_MAJOR_VERSION, 4)
sdl._sdl.SDL_GL_SetAttribute(sdl.flags.video.SDL_GL_CONTEXT_MINOR_VERSION, 3)
sdl._sdl.SDL_GL_SetAttribute(sdl.flags.video.SDL_GL_CONTEXT_PROFILE_MASK, sdl.flags.video.SDL_GL_CONTEXT_PROFILE_CORE)

local window = assert(sdl.create_window("LuaJIT OpenGL", 0, 0, 600, 400, 0))
if window:make_current() then
	error(sdl.get_error())
end

local timespec = ffi.new("timespec")
local timespec_ptr = ffi.cast("const timespec*", timespec) -- luajit magic
---@cast timespec table

timespec.tv_sec = 1
-- timespec.tv_nsec = 1500000000 -- 15 miliseconds

local running = true
while running do
	local event = sdl.poll_event()
	if event then
		if event.type == sdl.events.SDL_QUIT then
			running = false
		elseif event.type == sdl.events.SDL_KEYDOWN then
			if event.key.keysym.scancode == sdl.events.SDL_SCANCODE_ESCAPE then
				running = false
			end
		end
	end

	gl.glClear(GL_COLOR_BUFFER_BIT)
	print(gl.glClear)

	window:swap()

	print(1)

	ffi.C.nanosleep(timespec_ptr, nil)
end

