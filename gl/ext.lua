local ffi = require("ffi")

require("gl.gl") -- make sure gl cdefs are loaded

local glfw = require("glfw.glfw")

ffi.cdef([[
// Might need platform specific defs for these //
typedef signed   long  int     khronos_intptr_t;
typedef unsigned long  int     khronos_uintptr_t; 

typedef signed   long  int     khronos_ssize_t;
typedef unsigned long  int     khronos_usize_t;
// ==== //

typedef char GLchar;
typedef khronos_ssize_t GLsizeiptr;
typedef khronos_intptr_t GLintptr;


typedef GLuint (*GL_CREATESHADER) (GLenum);
typedef void (*GL_SHADERSOURCE) (GLuint, GLsizei, const GLchar **, const GLint *);
typedef void (*GL_COMPILESHADER) (GLuint);
typedef void (*GL_GETSHADERIV) (GLuint, GLenum, GLint *);
typedef void (*GL_GETSHADERINFOLOG) (GLuint, GLsizei, GLsizei *, GLchar *);
typedef void (*GL_DELETESHADER) (GLuint);

typedef void (*GL_ATTACHSHADER) (GLuint, GLuint);

typedef GLuint (*GL_CREATEPROGRAM) ();
typedef void (*GL_LINKPROGRAM) (GLuint);
typedef void (*GL_GETPROGRAMIV) (GLuint, GLenum, GLint *);
typedef void (*GL_GETPROGRAMINFOLOG) (GLuint, GLsizei, GLsizei *, GLchar *);
typedef void (*GL_DELETEPROGRAM) (GLuint);

typedef void (*GL_USEPROGRAM) (GLuint);

typedef void (*GL_GENBUFFERS) (GLsizei, GLuint*);
typedef void (*GL_BINDBUFFER) (GLenum, GLuint);
typedef void (*GL_BUFFERDATA) (GLenum, GLsizeiptr, const void *, GLenum);
typedef void (*GL_DELETEBUFFERS) (GLsizei, GLuint*);

typedef void (*GL_GENVERTEXARRAYS) (GLsizei, GLuint*);
typedef void (*GL_BINDVERTEXARRAY) (GLuint);
typedef void (*GL_DELETEVERTEXARRAYS) (GLsizei, GLuint*);

typedef void (*GL_VERTEXATTRIBPOINTER) (GLuint, GLint, GLenum, GLboolean, GLsizei, const void *);
typedef void (*GL_ENABLEVERTEXATTRIBARRAY) (GLuint);
]])

local fn_tbl = {}

local to_load = {
	glCreateShader = "GL_CREATESHADER",
	glShaderSource = "GL_SHADERSOURCE",
	glCompileShader = "GL_COMPILESHADER",
	glGetShaderiv = "GL_GETSHADERIV",
	glGetShaderInfoLog = "GL_GETSHADERINFOLOG",
	glDeleteShader = "GL_DELETESHADER",

	glAttachShader = "GL_ATTACHSHADER",

	glCreateProgram = "GL_CREATEPROGRAM",
	glLinkProgram = "GL_LINKPROGRAM",
	glGetProgramiv = "GL_GETPROGRAMIV",
	glGetProgramInfoLog = "GL_GETPROGRAMINFOLOG",
	glDeleteProgram = "GL_DELETEPROGRAM",

	glUseProgram = "GL_USEPROGRAM",

	glGenBuffers = "GL_GENBUFFERS",
	glBindBuffer = "GL_BINDBUFFER",
	glBufferData = "GL_BUFFERDATA",
	glDeleteBuffers = "GL_DELETEBUFFERS",

	glGenVertexArrays = "GL_GENVERTEXARRAYS",
	glBindVertexArray = "GL_BINDVERTEXARRAY",
	glDeleteVertexArrays = "GL_DELETEVERTEXARRAYS",

	glVertexAttribPointer =  "GL_VERTEXATTRIBPOINTER",
	glEnableVertexAttribArray = "GL_ENABLEVERTEXATTRIBARRAY",
}

local function load()
	for name, ctype in pairs(to_load) do
		local fn_ptr = ffi.cast(ctype, glfw.glfwGetProcAddress(name))

		if fn_ptr == nil then
			print(string.format("extention loader: '%s' was NULL", name))
		else
			fn_tbl[name] = fn_ptr
		end
	end
end

fn_tbl.load = load

return fn_tbl

