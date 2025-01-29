local ffi = require("ffi")

ffi.cdef([[
typedef unsigned int GLenum;
typedef unsigned char GLboolean;
typedef unsigned int GLbitfield;
typedef void GLvoid;
typedef signed char GLbyte;
typedef short GLshort;
typedef int GLint;
typedef unsigned char GLubyte;
typedef unsigned short GLushort;
typedef unsigned int GLuint;
typedef int GLsizei;
typedef float GLfloat;
typedef float GLclampf;
typedef double GLdouble;
typedef double GLclampd;
__attribute__((visibility("default"))) void glClearIndex( GLfloat c );
__attribute__((visibility("default"))) void glClearColor( GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha );
__attribute__((visibility("default"))) void glClear( GLbitfield mask );
__attribute__((visibility("default"))) void glIndexMask( GLuint mask );
__attribute__((visibility("default"))) void glColorMask( GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha );
__attribute__((visibility("default"))) void glAlphaFunc( GLenum func, GLclampf ref );
__attribute__((visibility("default"))) void glBlendFunc( GLenum sfactor, GLenum dfactor );
__attribute__((visibility("default"))) void glLogicOp( GLenum opcode );
__attribute__((visibility("default"))) void glCullFace( GLenum mode );
__attribute__((visibility("default"))) void glFrontFace( GLenum mode );
__attribute__((visibility("default"))) void glPointSize( GLfloat size );
__attribute__((visibility("default"))) void glLineWidth( GLfloat width );
__attribute__((visibility("default"))) void glLineStipple( GLint factor, GLushort pattern );
__attribute__((visibility("default"))) void glPolygonMode( GLenum face, GLenum mode );
__attribute__((visibility("default"))) void glPolygonOffset( GLfloat factor, GLfloat units );
__attribute__((visibility("default"))) void glPolygonStipple( const GLubyte *mask );
__attribute__((visibility("default"))) void glGetPolygonStipple( GLubyte *mask );
__attribute__((visibility("default"))) void glEdgeFlag( GLboolean flag );
__attribute__((visibility("default"))) void glEdgeFlagv( const GLboolean *flag );
__attribute__((visibility("default"))) void glScissor( GLint x, GLint y, GLsizei width, GLsizei height);
__attribute__((visibility("default"))) void glClipPlane( GLenum plane, const GLdouble *equation );
__attribute__((visibility("default"))) void glGetClipPlane( GLenum plane, GLdouble *equation );
__attribute__((visibility("default"))) void glDrawBuffer( GLenum mode );
__attribute__((visibility("default"))) void glReadBuffer( GLenum mode );
__attribute__((visibility("default"))) void glEnable( GLenum cap );
__attribute__((visibility("default"))) void glDisable( GLenum cap );
__attribute__((visibility("default"))) GLboolean glIsEnabled( GLenum cap );
__attribute__((visibility("default"))) void glEnableClientState( GLenum cap );
__attribute__((visibility("default"))) void glDisableClientState( GLenum cap );
__attribute__((visibility("default"))) void glGetBooleanv( GLenum pname, GLboolean *params );
__attribute__((visibility("default"))) void glGetDoublev( GLenum pname, GLdouble *params );
__attribute__((visibility("default"))) void glGetFloatv( GLenum pname, GLfloat *params );
__attribute__((visibility("default"))) void glGetIntegerv( GLenum pname, GLint *params );
__attribute__((visibility("default"))) void glPushAttrib( GLbitfield mask );
__attribute__((visibility("default"))) void glPopAttrib( void );
__attribute__((visibility("default"))) void glPushClientAttrib( GLbitfield mask );
__attribute__((visibility("default"))) void glPopClientAttrib( void );
__attribute__((visibility("default"))) GLint glRenderMode( GLenum mode );
__attribute__((visibility("default"))) GLenum glGetError( void );
__attribute__((visibility("default"))) const GLubyte * glGetString( GLenum name );
__attribute__((visibility("default"))) void glFinish( void );
__attribute__((visibility("default"))) void glFlush( void );
__attribute__((visibility("default"))) void glHint( GLenum target, GLenum mode );
__attribute__((visibility("default"))) void glClearDepth( GLclampd depth );
__attribute__((visibility("default"))) void glDepthFunc( GLenum func );
__attribute__((visibility("default"))) void glDepthMask( GLboolean flag );
__attribute__((visibility("default"))) void glDepthRange( GLclampd near_val, GLclampd far_val );
__attribute__((visibility("default"))) void glClearAccum( GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha );
__attribute__((visibility("default"))) void glAccum( GLenum op, GLfloat value );
__attribute__((visibility("default"))) void glMatrixMode( GLenum mode );
__attribute__((visibility("default"))) void glOrtho( GLdouble left, GLdouble right,
GLdouble bottom, GLdouble top,
GLdouble near_val, GLdouble far_val );
__attribute__((visibility("default"))) void glFrustum( GLdouble left, GLdouble right,
GLdouble bottom, GLdouble top,
GLdouble near_val, GLdouble far_val );
__attribute__((visibility("default"))) void glViewport( GLint x, GLint y,
GLsizei width, GLsizei height );
__attribute__((visibility("default"))) void glPushMatrix( void );
__attribute__((visibility("default"))) void glPopMatrix( void );
__attribute__((visibility("default"))) void glLoadIdentity( void );
__attribute__((visibility("default"))) void glLoadMatrixd( const GLdouble *m );
__attribute__((visibility("default"))) void glLoadMatrixf( const GLfloat *m );
__attribute__((visibility("default"))) void glMultMatrixd( const GLdouble *m );
__attribute__((visibility("default"))) void glMultMatrixf( const GLfloat *m );
__attribute__((visibility("default"))) void glRotated( GLdouble angle,
GLdouble x, GLdouble y, GLdouble z );
__attribute__((visibility("default"))) void glRotatef( GLfloat angle,
GLfloat x, GLfloat y, GLfloat z );
__attribute__((visibility("default"))) void glScaled( GLdouble x, GLdouble y, GLdouble z );
__attribute__((visibility("default"))) void glScalef( GLfloat x, GLfloat y, GLfloat z );
__attribute__((visibility("default"))) void glTranslated( GLdouble x, GLdouble y, GLdouble z );
__attribute__((visibility("default"))) void glTranslatef( GLfloat x, GLfloat y, GLfloat z );
__attribute__((visibility("default"))) GLboolean glIsList( GLuint list );
__attribute__((visibility("default"))) void glDeleteLists( GLuint list, GLsizei range );
__attribute__((visibility("default"))) GLuint glGenLists( GLsizei range );
__attribute__((visibility("default"))) void glNewList( GLuint list, GLenum mode );
__attribute__((visibility("default"))) void glEndList( void );
__attribute__((visibility("default"))) void glCallList( GLuint list );
__attribute__((visibility("default"))) void glCallLists( GLsizei n, GLenum type,
const GLvoid *lists );
__attribute__((visibility("default"))) void glListBase( GLuint base );
__attribute__((visibility("default"))) void glBegin( GLenum mode );
__attribute__((visibility("default"))) void glEnd( void );
__attribute__((visibility("default"))) void glVertex2d( GLdouble x, GLdouble y );
__attribute__((visibility("default"))) void glVertex2f( GLfloat x, GLfloat y );
__attribute__((visibility("default"))) void glVertex2i( GLint x, GLint y );
__attribute__((visibility("default"))) void glVertex2s( GLshort x, GLshort y );
__attribute__((visibility("default"))) void glVertex3d( GLdouble x, GLdouble y, GLdouble z );
__attribute__((visibility("default"))) void glVertex3f( GLfloat x, GLfloat y, GLfloat z );
__attribute__((visibility("default"))) void glVertex3i( GLint x, GLint y, GLint z );
__attribute__((visibility("default"))) void glVertex3s( GLshort x, GLshort y, GLshort z );
__attribute__((visibility("default"))) void glVertex4d( GLdouble x, GLdouble y, GLdouble z, GLdouble w );
__attribute__((visibility("default"))) void glVertex4f( GLfloat x, GLfloat y, GLfloat z, GLfloat w );
__attribute__((visibility("default"))) void glVertex4i( GLint x, GLint y, GLint z, GLint w );
__attribute__((visibility("default"))) void glVertex4s( GLshort x, GLshort y, GLshort z, GLshort w );
__attribute__((visibility("default"))) void glVertex2dv( const GLdouble *v );
__attribute__((visibility("default"))) void glVertex2fv( const GLfloat *v );
__attribute__((visibility("default"))) void glVertex2iv( const GLint *v );
__attribute__((visibility("default"))) void glVertex2sv( const GLshort *v );
__attribute__((visibility("default"))) void glVertex3dv( const GLdouble *v );
__attribute__((visibility("default"))) void glVertex3fv( const GLfloat *v );
__attribute__((visibility("default"))) void glVertex3iv( const GLint *v );
__attribute__((visibility("default"))) void glVertex3sv( const GLshort *v );
__attribute__((visibility("default"))) void glVertex4dv( const GLdouble *v );
__attribute__((visibility("default"))) void glVertex4fv( const GLfloat *v );
__attribute__((visibility("default"))) void glVertex4iv( const GLint *v );
__attribute__((visibility("default"))) void glVertex4sv( const GLshort *v );
__attribute__((visibility("default"))) void glNormal3b( GLbyte nx, GLbyte ny, GLbyte nz );
__attribute__((visibility("default"))) void glNormal3d( GLdouble nx, GLdouble ny, GLdouble nz );
__attribute__((visibility("default"))) void glNormal3f( GLfloat nx, GLfloat ny, GLfloat nz );
__attribute__((visibility("default"))) void glNormal3i( GLint nx, GLint ny, GLint nz );
__attribute__((visibility("default"))) void glNormal3s( GLshort nx, GLshort ny, GLshort nz );
__attribute__((visibility("default"))) void glNormal3bv( const GLbyte *v );
__attribute__((visibility("default"))) void glNormal3dv( const GLdouble *v );
__attribute__((visibility("default"))) void glNormal3fv( const GLfloat *v );
__attribute__((visibility("default"))) void glNormal3iv( const GLint *v );
__attribute__((visibility("default"))) void glNormal3sv( const GLshort *v );
__attribute__((visibility("default"))) void glIndexd( GLdouble c );
__attribute__((visibility("default"))) void glIndexf( GLfloat c );
__attribute__((visibility("default"))) void glIndexi( GLint c );
__attribute__((visibility("default"))) void glIndexs( GLshort c );
__attribute__((visibility("default"))) void glIndexub( GLubyte c );
__attribute__((visibility("default"))) void glIndexdv( const GLdouble *c );
__attribute__((visibility("default"))) void glIndexfv( const GLfloat *c );
__attribute__((visibility("default"))) void glIndexiv( const GLint *c );
__attribute__((visibility("default"))) void glIndexsv( const GLshort *c );
__attribute__((visibility("default"))) void glIndexubv( const GLubyte *c );
__attribute__((visibility("default"))) void glColor3b( GLbyte red, GLbyte green, GLbyte blue );
__attribute__((visibility("default"))) void glColor3d( GLdouble red, GLdouble green, GLdouble blue );
__attribute__((visibility("default"))) void glColor3f( GLfloat red, GLfloat green, GLfloat blue );
__attribute__((visibility("default"))) void glColor3i( GLint red, GLint green, GLint blue );
__attribute__((visibility("default"))) void glColor3s( GLshort red, GLshort green, GLshort blue );
__attribute__((visibility("default"))) void glColor3ub( GLubyte red, GLubyte green, GLubyte blue );
__attribute__((visibility("default"))) void glColor3ui( GLuint red, GLuint green, GLuint blue );
__attribute__((visibility("default"))) void glColor3us( GLushort red, GLushort green, GLushort blue );
__attribute__((visibility("default"))) void glColor4b( GLbyte red, GLbyte green,
GLbyte blue, GLbyte alpha );
__attribute__((visibility("default"))) void glColor4d( GLdouble red, GLdouble green,
GLdouble blue, GLdouble alpha );
__attribute__((visibility("default"))) void glColor4f( GLfloat red, GLfloat green,
GLfloat blue, GLfloat alpha );
__attribute__((visibility("default"))) void glColor4i( GLint red, GLint green,
GLint blue, GLint alpha );
__attribute__((visibility("default"))) void glColor4s( GLshort red, GLshort green,
GLshort blue, GLshort alpha );
__attribute__((visibility("default"))) void glColor4ub( GLubyte red, GLubyte green,
GLubyte blue, GLubyte alpha );
__attribute__((visibility("default"))) void glColor4ui( GLuint red, GLuint green,
GLuint blue, GLuint alpha );
__attribute__((visibility("default"))) void glColor4us( GLushort red, GLushort green,
GLushort blue, GLushort alpha );
__attribute__((visibility("default"))) void glColor3bv( const GLbyte *v );
__attribute__((visibility("default"))) void glColor3dv( const GLdouble *v );
__attribute__((visibility("default"))) void glColor3fv( const GLfloat *v );
__attribute__((visibility("default"))) void glColor3iv( const GLint *v );
__attribute__((visibility("default"))) void glColor3sv( const GLshort *v );
__attribute__((visibility("default"))) void glColor3ubv( const GLubyte *v );
__attribute__((visibility("default"))) void glColor3uiv( const GLuint *v );
__attribute__((visibility("default"))) void glColor3usv( const GLushort *v );
__attribute__((visibility("default"))) void glColor4bv( const GLbyte *v );
__attribute__((visibility("default"))) void glColor4dv( const GLdouble *v );
__attribute__((visibility("default"))) void glColor4fv( const GLfloat *v );
__attribute__((visibility("default"))) void glColor4iv( const GLint *v );
__attribute__((visibility("default"))) void glColor4sv( const GLshort *v );
__attribute__((visibility("default"))) void glColor4ubv( const GLubyte *v );
__attribute__((visibility("default"))) void glColor4uiv( const GLuint *v );
__attribute__((visibility("default"))) void glColor4usv( const GLushort *v );
__attribute__((visibility("default"))) void glTexCoord1d( GLdouble s );
__attribute__((visibility("default"))) void glTexCoord1f( GLfloat s );
__attribute__((visibility("default"))) void glTexCoord1i( GLint s );
__attribute__((visibility("default"))) void glTexCoord1s( GLshort s );
__attribute__((visibility("default"))) void glTexCoord2d( GLdouble s, GLdouble t );
__attribute__((visibility("default"))) void glTexCoord2f( GLfloat s, GLfloat t );
__attribute__((visibility("default"))) void glTexCoord2i( GLint s, GLint t );
__attribute__((visibility("default"))) void glTexCoord2s( GLshort s, GLshort t );
__attribute__((visibility("default"))) void glTexCoord3d( GLdouble s, GLdouble t, GLdouble r );
__attribute__((visibility("default"))) void glTexCoord3f( GLfloat s, GLfloat t, GLfloat r );
__attribute__((visibility("default"))) void glTexCoord3i( GLint s, GLint t, GLint r );
__attribute__((visibility("default"))) void glTexCoord3s( GLshort s, GLshort t, GLshort r );
__attribute__((visibility("default"))) void glTexCoord4d( GLdouble s, GLdouble t, GLdouble r, GLdouble q );
__attribute__((visibility("default"))) void glTexCoord4f( GLfloat s, GLfloat t, GLfloat r, GLfloat q );
__attribute__((visibility("default"))) void glTexCoord4i( GLint s, GLint t, GLint r, GLint q );
__attribute__((visibility("default"))) void glTexCoord4s( GLshort s, GLshort t, GLshort r, GLshort q );
__attribute__((visibility("default"))) void glTexCoord1dv( const GLdouble *v );
__attribute__((visibility("default"))) void glTexCoord1fv( const GLfloat *v );
__attribute__((visibility("default"))) void glTexCoord1iv( const GLint *v );
__attribute__((visibility("default"))) void glTexCoord1sv( const GLshort *v );
__attribute__((visibility("default"))) void glTexCoord2dv( const GLdouble *v );
__attribute__((visibility("default"))) void glTexCoord2fv( const GLfloat *v );
__attribute__((visibility("default"))) void glTexCoord2iv( const GLint *v );
__attribute__((visibility("default"))) void glTexCoord2sv( const GLshort *v );
__attribute__((visibility("default"))) void glTexCoord3dv( const GLdouble *v );
__attribute__((visibility("default"))) void glTexCoord3fv( const GLfloat *v );
__attribute__((visibility("default"))) void glTexCoord3iv( const GLint *v );
__attribute__((visibility("default"))) void glTexCoord3sv( const GLshort *v );
__attribute__((visibility("default"))) void glTexCoord4dv( const GLdouble *v );
__attribute__((visibility("default"))) void glTexCoord4fv( const GLfloat *v );
__attribute__((visibility("default"))) void glTexCoord4iv( const GLint *v );
__attribute__((visibility("default"))) void glTexCoord4sv( const GLshort *v );
__attribute__((visibility("default"))) void glRasterPos2d( GLdouble x, GLdouble y );
__attribute__((visibility("default"))) void glRasterPos2f( GLfloat x, GLfloat y );
__attribute__((visibility("default"))) void glRasterPos2i( GLint x, GLint y );
__attribute__((visibility("default"))) void glRasterPos2s( GLshort x, GLshort y );
__attribute__((visibility("default"))) void glRasterPos3d( GLdouble x, GLdouble y, GLdouble z );
__attribute__((visibility("default"))) void glRasterPos3f( GLfloat x, GLfloat y, GLfloat z );
__attribute__((visibility("default"))) void glRasterPos3i( GLint x, GLint y, GLint z );
__attribute__((visibility("default"))) void glRasterPos3s( GLshort x, GLshort y, GLshort z );
__attribute__((visibility("default"))) void glRasterPos4d( GLdouble x, GLdouble y, GLdouble z, GLdouble w );
__attribute__((visibility("default"))) void glRasterPos4f( GLfloat x, GLfloat y, GLfloat z, GLfloat w );
__attribute__((visibility("default"))) void glRasterPos4i( GLint x, GLint y, GLint z, GLint w );
__attribute__((visibility("default"))) void glRasterPos4s( GLshort x, GLshort y, GLshort z, GLshort w );
__attribute__((visibility("default"))) void glRasterPos2dv( const GLdouble *v );
__attribute__((visibility("default"))) void glRasterPos2fv( const GLfloat *v );
__attribute__((visibility("default"))) void glRasterPos2iv( const GLint *v );
__attribute__((visibility("default"))) void glRasterPos2sv( const GLshort *v );
__attribute__((visibility("default"))) void glRasterPos3dv( const GLdouble *v );
__attribute__((visibility("default"))) void glRasterPos3fv( const GLfloat *v );
__attribute__((visibility("default"))) void glRasterPos3iv( const GLint *v );
__attribute__((visibility("default"))) void glRasterPos3sv( const GLshort *v );
__attribute__((visibility("default"))) void glRasterPos4dv( const GLdouble *v );
__attribute__((visibility("default"))) void glRasterPos4fv( const GLfloat *v );
__attribute__((visibility("default"))) void glRasterPos4iv( const GLint *v );
__attribute__((visibility("default"))) void glRasterPos4sv( const GLshort *v );
__attribute__((visibility("default"))) void glRectd( GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2 );
__attribute__((visibility("default"))) void glRectf( GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2 );
__attribute__((visibility("default"))) void glRecti( GLint x1, GLint y1, GLint x2, GLint y2 );
__attribute__((visibility("default"))) void glRects( GLshort x1, GLshort y1, GLshort x2, GLshort y2 );
__attribute__((visibility("default"))) void glRectdv( const GLdouble *v1, const GLdouble *v2 );
__attribute__((visibility("default"))) void glRectfv( const GLfloat *v1, const GLfloat *v2 );
__attribute__((visibility("default"))) void glRectiv( const GLint *v1, const GLint *v2 );
__attribute__((visibility("default"))) void glRectsv( const GLshort *v1, const GLshort *v2 );
__attribute__((visibility("default"))) void glVertexPointer( GLint size, GLenum type,
GLsizei stride, const GLvoid *ptr );
__attribute__((visibility("default"))) void glNormalPointer( GLenum type, GLsizei stride,
const GLvoid *ptr );
__attribute__((visibility("default"))) void glColorPointer( GLint size, GLenum type,
GLsizei stride, const GLvoid *ptr );
__attribute__((visibility("default"))) void glIndexPointer( GLenum type, GLsizei stride,
const GLvoid *ptr );
__attribute__((visibility("default"))) void glTexCoordPointer( GLint size, GLenum type,
GLsizei stride, const GLvoid *ptr );
__attribute__((visibility("default"))) void glEdgeFlagPointer( GLsizei stride, const GLvoid *ptr );
__attribute__((visibility("default"))) void glGetPointerv( GLenum pname, GLvoid **params );
__attribute__((visibility("default"))) void glArrayElement( GLint i );
__attribute__((visibility("default"))) void glDrawArrays( GLenum mode, GLint first, GLsizei count );
__attribute__((visibility("default"))) void glDrawElements( GLenum mode, GLsizei count,
GLenum type, const GLvoid *indices );
__attribute__((visibility("default"))) void glInterleavedArrays( GLenum format, GLsizei stride,
const GLvoid *pointer );
__attribute__((visibility("default"))) void glShadeModel( GLenum mode );
__attribute__((visibility("default"))) void glLightf( GLenum light, GLenum pname, GLfloat param );
__attribute__((visibility("default"))) void glLighti( GLenum light, GLenum pname, GLint param );
__attribute__((visibility("default"))) void glLightfv( GLenum light, GLenum pname,
const GLfloat *params );
__attribute__((visibility("default"))) void glLightiv( GLenum light, GLenum pname,
const GLint *params );
__attribute__((visibility("default"))) void glGetLightfv( GLenum light, GLenum pname,
GLfloat *params );
__attribute__((visibility("default"))) void glGetLightiv( GLenum light, GLenum pname,
GLint *params );
__attribute__((visibility("default"))) void glLightModelf( GLenum pname, GLfloat param );
__attribute__((visibility("default"))) void glLightModeli( GLenum pname, GLint param );
__attribute__((visibility("default"))) void glLightModelfv( GLenum pname, const GLfloat *params );
__attribute__((visibility("default"))) void glLightModeliv( GLenum pname, const GLint *params );
__attribute__((visibility("default"))) void glMaterialf( GLenum face, GLenum pname, GLfloat param );
__attribute__((visibility("default"))) void glMateriali( GLenum face, GLenum pname, GLint param );
__attribute__((visibility("default"))) void glMaterialfv( GLenum face, GLenum pname, const GLfloat *params );
__attribute__((visibility("default"))) void glMaterialiv( GLenum face, GLenum pname, const GLint *params );
__attribute__((visibility("default"))) void glGetMaterialfv( GLenum face, GLenum pname, GLfloat *params );
__attribute__((visibility("default"))) void glGetMaterialiv( GLenum face, GLenum pname, GLint *params );
__attribute__((visibility("default"))) void glColorMaterial( GLenum face, GLenum mode );
__attribute__((visibility("default"))) void glPixelZoom( GLfloat xfactor, GLfloat yfactor );
__attribute__((visibility("default"))) void glPixelStoref( GLenum pname, GLfloat param );
__attribute__((visibility("default"))) void glPixelStorei( GLenum pname, GLint param );
__attribute__((visibility("default"))) void glPixelTransferf( GLenum pname, GLfloat param );
__attribute__((visibility("default"))) void glPixelTransferi( GLenum pname, GLint param );
__attribute__((visibility("default"))) void glPixelMapfv( GLenum map, GLsizei mapsize,
const GLfloat *values );
__attribute__((visibility("default"))) void glPixelMapuiv( GLenum map, GLsizei mapsize,
const GLuint *values );
__attribute__((visibility("default"))) void glPixelMapusv( GLenum map, GLsizei mapsize,
const GLushort *values );
__attribute__((visibility("default"))) void glGetPixelMapfv( GLenum map, GLfloat *values );
__attribute__((visibility("default"))) void glGetPixelMapuiv( GLenum map, GLuint *values );
__attribute__((visibility("default"))) void glGetPixelMapusv( GLenum map, GLushort *values );
__attribute__((visibility("default"))) void glBitmap( GLsizei width, GLsizei height,
GLfloat xorig, GLfloat yorig,
GLfloat xmove, GLfloat ymove,
const GLubyte *bitmap );
__attribute__((visibility("default"))) void glReadPixels( GLint x, GLint y,
GLsizei width, GLsizei height,
GLenum format, GLenum type,
GLvoid *pixels );
__attribute__((visibility("default"))) void glDrawPixels( GLsizei width, GLsizei height,
GLenum format, GLenum type,
const GLvoid *pixels );
__attribute__((visibility("default"))) void glCopyPixels( GLint x, GLint y,
GLsizei width, GLsizei height,
GLenum type );
__attribute__((visibility("default"))) void glStencilFunc( GLenum func, GLint ref, GLuint mask );
__attribute__((visibility("default"))) void glStencilMask( GLuint mask );
__attribute__((visibility("default"))) void glStencilOp( GLenum fail, GLenum zfail, GLenum zpass );
__attribute__((visibility("default"))) void glClearStencil( GLint s );
__attribute__((visibility("default"))) void glTexGend( GLenum coord, GLenum pname, GLdouble param );
__attribute__((visibility("default"))) void glTexGenf( GLenum coord, GLenum pname, GLfloat param );
__attribute__((visibility("default"))) void glTexGeni( GLenum coord, GLenum pname, GLint param );
__attribute__((visibility("default"))) void glTexGendv( GLenum coord, GLenum pname, const GLdouble *params );
__attribute__((visibility("default"))) void glTexGenfv( GLenum coord, GLenum pname, const GLfloat *params );
__attribute__((visibility("default"))) void glTexGeniv( GLenum coord, GLenum pname, const GLint *params );
__attribute__((visibility("default"))) void glGetTexGendv( GLenum coord, GLenum pname, GLdouble *params );
__attribute__((visibility("default"))) void glGetTexGenfv( GLenum coord, GLenum pname, GLfloat *params );
__attribute__((visibility("default"))) void glGetTexGeniv( GLenum coord, GLenum pname, GLint *params );
__attribute__((visibility("default"))) void glTexEnvf( GLenum target, GLenum pname, GLfloat param );
__attribute__((visibility("default"))) void glTexEnvi( GLenum target, GLenum pname, GLint param );
__attribute__((visibility("default"))) void glTexEnvfv( GLenum target, GLenum pname, const GLfloat *params );
__attribute__((visibility("default"))) void glTexEnviv( GLenum target, GLenum pname, const GLint *params );
__attribute__((visibility("default"))) void glGetTexEnvfv( GLenum target, GLenum pname, GLfloat *params );
__attribute__((visibility("default"))) void glGetTexEnviv( GLenum target, GLenum pname, GLint *params );
__attribute__((visibility("default"))) void glTexParameterf( GLenum target, GLenum pname, GLfloat param );
__attribute__((visibility("default"))) void glTexParameteri( GLenum target, GLenum pname, GLint param );
__attribute__((visibility("default"))) void glTexParameterfv( GLenum target, GLenum pname,
const GLfloat *params );
__attribute__((visibility("default"))) void glTexParameteriv( GLenum target, GLenum pname,
const GLint *params );
__attribute__((visibility("default"))) void glGetTexParameterfv( GLenum target,
GLenum pname, GLfloat *params);
__attribute__((visibility("default"))) void glGetTexParameteriv( GLenum target,
GLenum pname, GLint *params );
__attribute__((visibility("default"))) void glGetTexLevelParameterfv( GLenum target, GLint level,
GLenum pname, GLfloat *params );
__attribute__((visibility("default"))) void glGetTexLevelParameteriv( GLenum target, GLint level,
GLenum pname, GLint *params );
__attribute__((visibility("default"))) void glTexImage1D( GLenum target, GLint level,
GLint internalFormat,
GLsizei width, GLint border,
GLenum format, GLenum type,
const GLvoid *pixels );
__attribute__((visibility("default"))) void glTexImage2D( GLenum target, GLint level,
GLint internalFormat,
GLsizei width, GLsizei height,
GLint border, GLenum format, GLenum type,
const GLvoid *pixels );
__attribute__((visibility("default"))) void glGetTexImage( GLenum target, GLint level,
GLenum format, GLenum type,
GLvoid *pixels );
__attribute__((visibility("default"))) void glGenTextures( GLsizei n, GLuint *textures );
__attribute__((visibility("default"))) void glDeleteTextures( GLsizei n, const GLuint *textures);
__attribute__((visibility("default"))) void glBindTexture( GLenum target, GLuint texture );
__attribute__((visibility("default"))) void glPrioritizeTextures( GLsizei n,
const GLuint *textures,
const GLclampf *priorities );
__attribute__((visibility("default"))) GLboolean glAreTexturesResident( GLsizei n,
const GLuint *textures,
GLboolean *residences );
__attribute__((visibility("default"))) GLboolean glIsTexture( GLuint texture );
__attribute__((visibility("default"))) void glTexSubImage1D( GLenum target, GLint level,
GLint xoffset,
GLsizei width, GLenum format,
GLenum type, const GLvoid *pixels );
__attribute__((visibility("default"))) void glTexSubImage2D( GLenum target, GLint level,
GLint xoffset, GLint yoffset,
GLsizei width, GLsizei height,
GLenum format, GLenum type,
const GLvoid *pixels );
__attribute__((visibility("default"))) void glCopyTexImage1D( GLenum target, GLint level,
GLenum internalformat,
GLint x, GLint y,
GLsizei width, GLint border );
__attribute__((visibility("default"))) void glCopyTexImage2D( GLenum target, GLint level,
GLenum internalformat,
GLint x, GLint y,
GLsizei width, GLsizei height,
GLint border );
__attribute__((visibility("default"))) void glCopyTexSubImage1D( GLenum target, GLint level,
GLint xoffset, GLint x, GLint y,
GLsizei width );
__attribute__((visibility("default"))) void glCopyTexSubImage2D( GLenum target, GLint level,
GLint xoffset, GLint yoffset,
GLint x, GLint y,
GLsizei width, GLsizei height );
__attribute__((visibility("default"))) void glMap1d( GLenum target, GLdouble u1, GLdouble u2,
GLint stride,
GLint order, const GLdouble *points );
__attribute__((visibility("default"))) void glMap1f( GLenum target, GLfloat u1, GLfloat u2,
GLint stride,
GLint order, const GLfloat *points );
__attribute__((visibility("default"))) void glMap2d( GLenum target,
GLdouble u1, GLdouble u2, GLint ustride, GLint uorder,
GLdouble v1, GLdouble v2, GLint vstride, GLint vorder,
const GLdouble *points );
__attribute__((visibility("default"))) void glMap2f( GLenum target,
GLfloat u1, GLfloat u2, GLint ustride, GLint uorder,
GLfloat v1, GLfloat v2, GLint vstride, GLint vorder,
const GLfloat *points );
__attribute__((visibility("default"))) void glGetMapdv( GLenum target, GLenum query, GLdouble *v );
__attribute__((visibility("default"))) void glGetMapfv( GLenum target, GLenum query, GLfloat *v );
__attribute__((visibility("default"))) void glGetMapiv( GLenum target, GLenum query, GLint *v );
__attribute__((visibility("default"))) void glEvalCoord1d( GLdouble u );
__attribute__((visibility("default"))) void glEvalCoord1f( GLfloat u );
__attribute__((visibility("default"))) void glEvalCoord1dv( const GLdouble *u );
__attribute__((visibility("default"))) void glEvalCoord1fv( const GLfloat *u );
__attribute__((visibility("default"))) void glEvalCoord2d( GLdouble u, GLdouble v );
__attribute__((visibility("default"))) void glEvalCoord2f( GLfloat u, GLfloat v );
__attribute__((visibility("default"))) void glEvalCoord2dv( const GLdouble *u );
__attribute__((visibility("default"))) void glEvalCoord2fv( const GLfloat *u );
__attribute__((visibility("default"))) void glMapGrid1d( GLint un, GLdouble u1, GLdouble u2 );
__attribute__((visibility("default"))) void glMapGrid1f( GLint un, GLfloat u1, GLfloat u2 );
__attribute__((visibility("default"))) void glMapGrid2d( GLint un, GLdouble u1, GLdouble u2,
GLint vn, GLdouble v1, GLdouble v2 );
__attribute__((visibility("default"))) void glMapGrid2f( GLint un, GLfloat u1, GLfloat u2,
GLint vn, GLfloat v1, GLfloat v2 );
__attribute__((visibility("default"))) void glEvalPoint1( GLint i );
__attribute__((visibility("default"))) void glEvalPoint2( GLint i, GLint j );
__attribute__((visibility("default"))) void glEvalMesh1( GLenum mode, GLint i1, GLint i2 );
__attribute__((visibility("default"))) void glEvalMesh2( GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2 );
__attribute__((visibility("default"))) void glFogf( GLenum pname, GLfloat param );
__attribute__((visibility("default"))) void glFogi( GLenum pname, GLint param );
__attribute__((visibility("default"))) void glFogfv( GLenum pname, const GLfloat *params );
__attribute__((visibility("default"))) void glFogiv( GLenum pname, const GLint *params );
__attribute__((visibility("default"))) void glFeedbackBuffer( GLsizei size, GLenum type, GLfloat *buffer );
__attribute__((visibility("default"))) void glPassThrough( GLfloat token );
__attribute__((visibility("default"))) void glSelectBuffer( GLsizei size, GLuint *buffer );
__attribute__((visibility("default"))) void glInitNames( void );
__attribute__((visibility("default"))) void glLoadName( GLuint name );
__attribute__((visibility("default"))) void glPushName( GLuint name );
__attribute__((visibility("default"))) void glPopName( void );
__attribute__((visibility("default"))) void glDrawRangeElements( GLenum mode, GLuint start,
GLuint end, GLsizei count, GLenum type, const GLvoid *indices );
__attribute__((visibility("default"))) void glTexImage3D( GLenum target, GLint level,
GLint internalFormat,
GLsizei width, GLsizei height,
GLsizei depth, GLint border,
GLenum format, GLenum type,
const GLvoid *pixels );
__attribute__((visibility("default"))) void glTexSubImage3D( GLenum target, GLint level,
GLint xoffset, GLint yoffset,
GLint zoffset, GLsizei width,
GLsizei height, GLsizei depth,
GLenum format,
GLenum type, const GLvoid *pixels);
__attribute__((visibility("default"))) void glCopyTexSubImage3D( GLenum target, GLint level,
GLint xoffset, GLint yoffset,
GLint zoffset, GLint x,
GLint y, GLsizei width,
GLsizei height );
typedef void ( * PFNGLDRAWRANGEELEMENTSPROC) (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const GLvoid *indices);
typedef void ( * PFNGLTEXIMAGE3DPROC) (GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid *pixels);
typedef void ( * PFNGLTEXSUBIMAGE3DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid *pixels);
typedef void ( * PFNGLCOPYTEXSUBIMAGE3DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
__attribute__((visibility("default"))) void glColorTable( GLenum target, GLenum internalformat,
GLsizei width, GLenum format,
GLenum type, const GLvoid *table );
__attribute__((visibility("default"))) void glColorSubTable( GLenum target,
GLsizei start, GLsizei count,
GLenum format, GLenum type,
const GLvoid *data );
__attribute__((visibility("default"))) void glColorTableParameteriv(GLenum target, GLenum pname,
const GLint *params);
__attribute__((visibility("default"))) void glColorTableParameterfv(GLenum target, GLenum pname,
const GLfloat *params);
__attribute__((visibility("default"))) void glCopyColorSubTable( GLenum target, GLsizei start,
GLint x, GLint y, GLsizei width );
__attribute__((visibility("default"))) void glCopyColorTable( GLenum target, GLenum internalformat,
GLint x, GLint y, GLsizei width );
__attribute__((visibility("default"))) void glGetColorTable( GLenum target, GLenum format,
GLenum type, GLvoid *table );
__attribute__((visibility("default"))) void glGetColorTableParameterfv( GLenum target, GLenum pname,
GLfloat *params );
__attribute__((visibility("default"))) void glGetColorTableParameteriv( GLenum target, GLenum pname,
GLint *params );
__attribute__((visibility("default"))) void glBlendEquation( GLenum mode );
__attribute__((visibility("default"))) void glBlendColor( GLclampf red, GLclampf green,
GLclampf blue, GLclampf alpha );
__attribute__((visibility("default"))) void glHistogram( GLenum target, GLsizei width,
GLenum internalformat, GLboolean sink );
__attribute__((visibility("default"))) void glResetHistogram( GLenum target );
__attribute__((visibility("default"))) void glGetHistogram( GLenum target, GLboolean reset,
GLenum format, GLenum type,
GLvoid *values );
__attribute__((visibility("default"))) void glGetHistogramParameterfv( GLenum target, GLenum pname,
GLfloat *params );
__attribute__((visibility("default"))) void glGetHistogramParameteriv( GLenum target, GLenum pname,
GLint *params );
__attribute__((visibility("default"))) void glMinmax( GLenum target, GLenum internalformat,
GLboolean sink );
__attribute__((visibility("default"))) void glResetMinmax( GLenum target );
__attribute__((visibility("default"))) void glGetMinmax( GLenum target, GLboolean reset,
GLenum format, GLenum types,
GLvoid *values );
__attribute__((visibility("default"))) void glGetMinmaxParameterfv( GLenum target, GLenum pname,
GLfloat *params );
__attribute__((visibility("default"))) void glGetMinmaxParameteriv( GLenum target, GLenum pname,
GLint *params );
__attribute__((visibility("default"))) void glConvolutionFilter1D( GLenum target,
GLenum internalformat, GLsizei width, GLenum format, GLenum type,
const GLvoid *image );
__attribute__((visibility("default"))) void glConvolutionFilter2D( GLenum target,
GLenum internalformat, GLsizei width, GLsizei height, GLenum format,
GLenum type, const GLvoid *image );
__attribute__((visibility("default"))) void glConvolutionParameterf( GLenum target, GLenum pname,
GLfloat params );
__attribute__((visibility("default"))) void glConvolutionParameterfv( GLenum target, GLenum pname,
const GLfloat *params );
__attribute__((visibility("default"))) void glConvolutionParameteri( GLenum target, GLenum pname,
GLint params );
__attribute__((visibility("default"))) void glConvolutionParameteriv( GLenum target, GLenum pname,
const GLint *params );
__attribute__((visibility("default"))) void glCopyConvolutionFilter1D( GLenum target,
GLenum internalformat, GLint x, GLint y, GLsizei width );
__attribute__((visibility("default"))) void glCopyConvolutionFilter2D( GLenum target,
GLenum internalformat, GLint x, GLint y, GLsizei width,
GLsizei height);
__attribute__((visibility("default"))) void glGetConvolutionFilter( GLenum target, GLenum format,
GLenum type, GLvoid *image );
__attribute__((visibility("default"))) void glGetConvolutionParameterfv( GLenum target, GLenum pname,
GLfloat *params );
__attribute__((visibility("default"))) void glGetConvolutionParameteriv( GLenum target, GLenum pname,
GLint *params );
__attribute__((visibility("default"))) void glSeparableFilter2D( GLenum target,
GLenum internalformat, GLsizei width, GLsizei height, GLenum format,
GLenum type, const GLvoid *row, const GLvoid *column );
__attribute__((visibility("default"))) void glGetSeparableFilter( GLenum target, GLenum format,
GLenum type, GLvoid *row, GLvoid *column, GLvoid *span );
__attribute__((visibility("default"))) void glActiveTexture( GLenum texture );
__attribute__((visibility("default"))) void glClientActiveTexture( GLenum texture );
__attribute__((visibility("default"))) void glCompressedTexImage1D( GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid *data );
__attribute__((visibility("default"))) void glCompressedTexImage2D( GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid *data );
__attribute__((visibility("default"))) void glCompressedTexImage3D( GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid *data );
__attribute__((visibility("default"))) void glCompressedTexSubImage1D( GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid *data );
__attribute__((visibility("default"))) void glCompressedTexSubImage2D( GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid *data );
__attribute__((visibility("default"))) void glCompressedTexSubImage3D( GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid *data );
__attribute__((visibility("default"))) void glGetCompressedTexImage( GLenum target, GLint lod, GLvoid *img );
__attribute__((visibility("default"))) void glMultiTexCoord1d( GLenum target, GLdouble s );
__attribute__((visibility("default"))) void glMultiTexCoord1dv( GLenum target, const GLdouble *v );
__attribute__((visibility("default"))) void glMultiTexCoord1f( GLenum target, GLfloat s );
__attribute__((visibility("default"))) void glMultiTexCoord1fv( GLenum target, const GLfloat *v );
__attribute__((visibility("default"))) void glMultiTexCoord1i( GLenum target, GLint s );
__attribute__((visibility("default"))) void glMultiTexCoord1iv( GLenum target, const GLint *v );
__attribute__((visibility("default"))) void glMultiTexCoord1s( GLenum target, GLshort s );
__attribute__((visibility("default"))) void glMultiTexCoord1sv( GLenum target, const GLshort *v );
__attribute__((visibility("default"))) void glMultiTexCoord2d( GLenum target, GLdouble s, GLdouble t );
__attribute__((visibility("default"))) void glMultiTexCoord2dv( GLenum target, const GLdouble *v );
__attribute__((visibility("default"))) void glMultiTexCoord2f( GLenum target, GLfloat s, GLfloat t );
__attribute__((visibility("default"))) void glMultiTexCoord2fv( GLenum target, const GLfloat *v );
__attribute__((visibility("default"))) void glMultiTexCoord2i( GLenum target, GLint s, GLint t );
__attribute__((visibility("default"))) void glMultiTexCoord2iv( GLenum target, const GLint *v );
__attribute__((visibility("default"))) void glMultiTexCoord2s( GLenum target, GLshort s, GLshort t );
__attribute__((visibility("default"))) void glMultiTexCoord2sv( GLenum target, const GLshort *v );
__attribute__((visibility("default"))) void glMultiTexCoord3d( GLenum target, GLdouble s, GLdouble t, GLdouble r );
__attribute__((visibility("default"))) void glMultiTexCoord3dv( GLenum target, const GLdouble *v );
__attribute__((visibility("default"))) void glMultiTexCoord3f( GLenum target, GLfloat s, GLfloat t, GLfloat r );
__attribute__((visibility("default"))) void glMultiTexCoord3fv( GLenum target, const GLfloat *v );
__attribute__((visibility("default"))) void glMultiTexCoord3i( GLenum target, GLint s, GLint t, GLint r );
__attribute__((visibility("default"))) void glMultiTexCoord3iv( GLenum target, const GLint *v );
__attribute__((visibility("default"))) void glMultiTexCoord3s( GLenum target, GLshort s, GLshort t, GLshort r );
__attribute__((visibility("default"))) void glMultiTexCoord3sv( GLenum target, const GLshort *v );
__attribute__((visibility("default"))) void glMultiTexCoord4d( GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q );
__attribute__((visibility("default"))) void glMultiTexCoord4dv( GLenum target, const GLdouble *v );
__attribute__((visibility("default"))) void glMultiTexCoord4f( GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q );
__attribute__((visibility("default"))) void glMultiTexCoord4fv( GLenum target, const GLfloat *v );
__attribute__((visibility("default"))) void glMultiTexCoord4i( GLenum target, GLint s, GLint t, GLint r, GLint q );
__attribute__((visibility("default"))) void glMultiTexCoord4iv( GLenum target, const GLint *v );
__attribute__((visibility("default"))) void glMultiTexCoord4s( GLenum target, GLshort s, GLshort t, GLshort r, GLshort q );
__attribute__((visibility("default"))) void glMultiTexCoord4sv( GLenum target, const GLshort *v );
__attribute__((visibility("default"))) void glLoadTransposeMatrixd( const GLdouble m[16] );
__attribute__((visibility("default"))) void glLoadTransposeMatrixf( const GLfloat m[16] );
__attribute__((visibility("default"))) void glMultTransposeMatrixd( const GLdouble m[16] );
__attribute__((visibility("default"))) void glMultTransposeMatrixf( const GLfloat m[16] );
__attribute__((visibility("default"))) void glSampleCoverage( GLclampf value, GLboolean invert );
typedef void ( * PFNGLACTIVETEXTUREPROC) (GLenum texture);
typedef void ( * PFNGLSAMPLECOVERAGEPROC) (GLclampf value, GLboolean invert);
typedef void ( * PFNGLCOMPRESSEDTEXIMAGE3DPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLCOMPRESSEDTEXIMAGE2DPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLCOMPRESSEDTEXIMAGE1DPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC) (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLGETCOMPRESSEDTEXIMAGEPROC) (GLenum target, GLint level, GLvoid *img);
__attribute__((visibility("default"))) void glActiveTextureARB(GLenum texture);
__attribute__((visibility("default"))) void glClientActiveTextureARB(GLenum texture);
__attribute__((visibility("default"))) void glMultiTexCoord1dARB(GLenum target, GLdouble s);
__attribute__((visibility("default"))) void glMultiTexCoord1dvARB(GLenum target, const GLdouble *v);
__attribute__((visibility("default"))) void glMultiTexCoord1fARB(GLenum target, GLfloat s);
__attribute__((visibility("default"))) void glMultiTexCoord1fvARB(GLenum target, const GLfloat *v);
__attribute__((visibility("default"))) void glMultiTexCoord1iARB(GLenum target, GLint s);
__attribute__((visibility("default"))) void glMultiTexCoord1ivARB(GLenum target, const GLint *v);
__attribute__((visibility("default"))) void glMultiTexCoord1sARB(GLenum target, GLshort s);
__attribute__((visibility("default"))) void glMultiTexCoord1svARB(GLenum target, const GLshort *v);
__attribute__((visibility("default"))) void glMultiTexCoord2dARB(GLenum target, GLdouble s, GLdouble t);
__attribute__((visibility("default"))) void glMultiTexCoord2dvARB(GLenum target, const GLdouble *v);
__attribute__((visibility("default"))) void glMultiTexCoord2fARB(GLenum target, GLfloat s, GLfloat t);
__attribute__((visibility("default"))) void glMultiTexCoord2fvARB(GLenum target, const GLfloat *v);
__attribute__((visibility("default"))) void glMultiTexCoord2iARB(GLenum target, GLint s, GLint t);
__attribute__((visibility("default"))) void glMultiTexCoord2ivARB(GLenum target, const GLint *v);
__attribute__((visibility("default"))) void glMultiTexCoord2sARB(GLenum target, GLshort s, GLshort t);
__attribute__((visibility("default"))) void glMultiTexCoord2svARB(GLenum target, const GLshort *v);
__attribute__((visibility("default"))) void glMultiTexCoord3dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r);
__attribute__((visibility("default"))) void glMultiTexCoord3dvARB(GLenum target, const GLdouble *v);
__attribute__((visibility("default"))) void glMultiTexCoord3fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r);
__attribute__((visibility("default"))) void glMultiTexCoord3fvARB(GLenum target, const GLfloat *v);
__attribute__((visibility("default"))) void glMultiTexCoord3iARB(GLenum target, GLint s, GLint t, GLint r);
__attribute__((visibility("default"))) void glMultiTexCoord3ivARB(GLenum target, const GLint *v);
__attribute__((visibility("default"))) void glMultiTexCoord3sARB(GLenum target, GLshort s, GLshort t, GLshort r);
__attribute__((visibility("default"))) void glMultiTexCoord3svARB(GLenum target, const GLshort *v);
__attribute__((visibility("default"))) void glMultiTexCoord4dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
__attribute__((visibility("default"))) void glMultiTexCoord4dvARB(GLenum target, const GLdouble *v);
__attribute__((visibility("default"))) void glMultiTexCoord4fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
__attribute__((visibility("default"))) void glMultiTexCoord4fvARB(GLenum target, const GLfloat *v);
__attribute__((visibility("default"))) void glMultiTexCoord4iARB(GLenum target, GLint s, GLint t, GLint r, GLint q);
__attribute__((visibility("default"))) void glMultiTexCoord4ivARB(GLenum target, const GLint *v);
__attribute__((visibility("default"))) void glMultiTexCoord4sARB(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
__attribute__((visibility("default"))) void glMultiTexCoord4svARB(GLenum target, const GLshort *v);
typedef void ( * PFNGLACTIVETEXTUREARBPROC) (GLenum texture);
typedef void ( * PFNGLCLIENTACTIVETEXTUREARBPROC) (GLenum texture);
typedef void ( * PFNGLMULTITEXCOORD1DARBPROC) (GLenum target, GLdouble s);
typedef void ( * PFNGLMULTITEXCOORD1DVARBPROC) (GLenum target, const GLdouble *v);
typedef void ( * PFNGLMULTITEXCOORD1FARBPROC) (GLenum target, GLfloat s);
typedef void ( * PFNGLMULTITEXCOORD1FVARBPROC) (GLenum target, const GLfloat *v);
typedef void ( * PFNGLMULTITEXCOORD1IARBPROC) (GLenum target, GLint s);
typedef void ( * PFNGLMULTITEXCOORD1IVARBPROC) (GLenum target, const GLint *v);
typedef void ( * PFNGLMULTITEXCOORD1SARBPROC) (GLenum target, GLshort s);
typedef void ( * PFNGLMULTITEXCOORD1SVARBPROC) (GLenum target, const GLshort *v);
typedef void ( * PFNGLMULTITEXCOORD2DARBPROC) (GLenum target, GLdouble s, GLdouble t);
typedef void ( * PFNGLMULTITEXCOORD2DVARBPROC) (GLenum target, const GLdouble *v);
typedef void ( * PFNGLMULTITEXCOORD2FARBPROC) (GLenum target, GLfloat s, GLfloat t);
typedef void ( * PFNGLMULTITEXCOORD2FVARBPROC) (GLenum target, const GLfloat *v);
typedef void ( * PFNGLMULTITEXCOORD2IARBPROC) (GLenum target, GLint s, GLint t);
typedef void ( * PFNGLMULTITEXCOORD2IVARBPROC) (GLenum target, const GLint *v);
typedef void ( * PFNGLMULTITEXCOORD2SARBPROC) (GLenum target, GLshort s, GLshort t);
typedef void ( * PFNGLMULTITEXCOORD2SVARBPROC) (GLenum target, const GLshort *v);
typedef void ( * PFNGLMULTITEXCOORD3DARBPROC) (GLenum target, GLdouble s, GLdouble t, GLdouble r);
typedef void ( * PFNGLMULTITEXCOORD3DVARBPROC) (GLenum target, const GLdouble *v);
typedef void ( * PFNGLMULTITEXCOORD3FARBPROC) (GLenum target, GLfloat s, GLfloat t, GLfloat r);
typedef void ( * PFNGLMULTITEXCOORD3FVARBPROC) (GLenum target, const GLfloat *v);
typedef void ( * PFNGLMULTITEXCOORD3IARBPROC) (GLenum target, GLint s, GLint t, GLint r);
typedef void ( * PFNGLMULTITEXCOORD3IVARBPROC) (GLenum target, const GLint *v);
typedef void ( * PFNGLMULTITEXCOORD3SARBPROC) (GLenum target, GLshort s, GLshort t, GLshort r);
typedef void ( * PFNGLMULTITEXCOORD3SVARBPROC) (GLenum target, const GLshort *v);
typedef void ( * PFNGLMULTITEXCOORD4DARBPROC) (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
typedef void ( * PFNGLMULTITEXCOORD4DVARBPROC) (GLenum target, const GLdouble *v);
typedef void ( * PFNGLMULTITEXCOORD4FARBPROC) (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
typedef void ( * PFNGLMULTITEXCOORD4FVARBPROC) (GLenum target, const GLfloat *v);
typedef void ( * PFNGLMULTITEXCOORD4IARBPROC) (GLenum target, GLint s, GLint t, GLint r, GLint q);
typedef void ( * PFNGLMULTITEXCOORD4IVARBPROC) (GLenum target, const GLint *v);
typedef void ( * PFNGLMULTITEXCOORD4SARBPROC) (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
typedef void ( * PFNGLMULTITEXCOORD4SVARBPROC) (GLenum target, const GLshort *v);
__attribute__((visibility("default"))) void glBlendEquationSeparateATI( GLenum modeRGB, GLenum modeA );
typedef void ( * PFNGLBLENDEQUATIONSEPARATEATIPROC) (GLenum modeRGB, GLenum modeA);
]])

-- Needs glext.h
-- Im lazy, and probably not going to use these
--[[
	typedef void ( * PFNGLEGLIMAGETARGETTEXTURE2DOESPROC) (GLenum target, GLeglImageOES image);
	typedef void ( * PFNGLEGLIMAGETARGETRENDERBUFFERSTORAGEOESPROC) (GLenum target, GLeglImageOES image);
]]

local gl = ffi.load("GL")

return gl

