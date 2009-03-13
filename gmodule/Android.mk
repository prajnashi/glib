LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
    gmodule.c    

LOCAL_SHARED_LIBRARIES := 	\
    libglib-2.0   		\
    libdl

LOCAL_MODULE:= libgmodule-2.0

LOCAL_C_INCLUDES := 		\
	$(GLIB_TOP)		\
	$(GLIB_TOP)/android	\
	$(GLIB_TOP)/glib	\
	$(LOCAL_PATH)/android

LOCAL_CFLAGS := \
    -DG_LOG_DOMAIN=\"GModule\"      \
    -DG_DISABLE_DEPRECATED 

include $(BUILD_SHARED_LIBRARY)
