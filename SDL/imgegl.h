
/******************************************************************************
 * Name         : wsegl.h
 *
 * Copyright    : 2005-2009 by Imagination Technologies Limited.
 *              : All rights reserved. No part of this software, either
 *              : material or conceptual may be copied or distributed,
 *              : transmitted, transcribed, stored in a retrieval system or
 *              : translated into any human or computer language in any form
 *              : by any means, electronic, mechanical, manual or otherwise,
 *              : or disclosed to third parties without the express written
 *              : permission of Imagination Technologies Limited, Home Park
 *              : Estate, Kings Langley, Hertfordshire, WD4 8LZ, U.K.
 *
 * Platform     : ANSI
 *
 * $Log: imgegl.h $
 *****************************************************************************/

#if !defined(__IMGEGL_H__)
#define __IMGEGL_H__

#ifdef __cplusplus
extern "C" {
#endif

EGLint IMGeglGetError(void);

EGLDisplay IMGeglGetDisplay(NativeDisplayType display);
EGLBoolean IMGeglInitialize(EGLDisplay dpy, EGLint *major, EGLint *minor);
EGLBoolean IMGeglTerminate(EGLDisplay dpy);
const char * IMGeglQueryString(EGLDisplay dpy, EGLint name);
void (* IMGeglGetProcAddress(const char *procname))(void);

EGLBoolean IMGeglGetConfigs(EGLDisplay dpy, EGLConfig *configs, EGLint config_size, EGLint *num_config);
EGLBoolean IMGeglChooseConfig(EGLDisplay dpy, const EGLint *attrib_list, EGLConfig *configs, EGLint config_size, EGLint *num_config);
EGLBoolean IMGeglGetConfigAttrib(EGLDisplay dpy, EGLConfig config, EGLint attribute, EGLint *value);

EGLSurface IMGeglCreateWindowSurface(EGLDisplay dpy, EGLConfig config, NativeWindowType window, const EGLint *attrib_list);
EGLSurface IMGeglCreatePixmapSurface(EGLDisplay dpy, EGLConfig config, NativePixmapType pixmap, const EGLint *attrib_list);
EGLSurface IMGeglCreatePbufferSurface(EGLDisplay dpy, EGLConfig config, const EGLint *attrib_list);
EGLBoolean IMGeglDestroySurface(EGLDisplay dpy, EGLSurface surface);
EGLBoolean IMGeglQuerySurface(EGLDisplay dpy, EGLSurface surface, EGLint attribute, EGLint *value);

EGLContext IMGeglCreateContext(EGLDisplay dpy, EGLConfig config, EGLContext share_list, const EGLint *attrib_list);
EGLBoolean IMGeglDestroyContext(EGLDisplay dpy, EGLContext ctx);
EGLBoolean IMGeglMakeCurrent(EGLDisplay dpy, EGLSurface draw, EGLSurface read, EGLContext ctx);
EGLContext IMGeglGetCurrentContext(void);
EGLSurface IMGeglGetCurrentSurface(EGLint readdraw);
EGLDisplay IMGeglGetCurrentDisplay(void);
EGLBoolean IMGeglQueryContext(EGLDisplay dpy, EGLContext ctx, EGLint attribute, EGLint *value);

EGLBoolean IMGeglWaitGL(void);
EGLBoolean IMGeglWaitNative(EGLint engine);
EGLBoolean IMGeglSwapBuffers(EGLDisplay dpy, EGLSurface draw);
EGLBoolean IMGeglCopyBuffers(EGLDisplay dpy, EGLSurface surface, NativePixmapType target);

EGLBoolean IMGeglSurfaceAttrib(EGLDisplay dpy, EGLSurface surface, EGLint attribute, EGLint value);
EGLBoolean IMGeglBindTexImage(EGLDisplay dpy, EGLSurface surface, EGLint buffer);
EGLBoolean IMGeglReleaseTexImage(EGLDisplay dpy, EGLSurface surface, EGLint buffer);
EGLBoolean IMGeglSwapInterval(EGLDisplay dpy, EGLint interval);

EGLSurface IMGeglCreatePbufferFromClientBuffer(EGLDisplay dpy, EGLenum buftype, EGLClientBuffer buffer,
 												  EGLConfig config, const EGLint *attrib_list);
EGLBoolean IMGeglBindAPI(EGLenum api);
EGLenum    IMGeglQueryAPI(void);
EGLBoolean IMGeglWaitClient(void);
EGLBoolean IMGeglReleaseThread(void);

#ifdef __cplusplus
}
#endif


#endif /* __IMGEGL_H__ */

/******************************************************************************
 End of file (imgegl.h)
******************************************************************************/
