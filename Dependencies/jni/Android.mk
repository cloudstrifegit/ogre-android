LOCAL_PATH := $(call my-dir)
 
include $(CLEAR_VARS)
 
LOCAL_MODULE    := libzzip
LOCAL_LDLIBS	:= -ldl -lz
LOCAL_SRC_FILES := zzip/dir.c zzip/err.c zzip/fetch.c zzip/file.c zzip/fseeko.c zzip/info.c zzip/memdisk.c zzip/mmapped.c zzip/plugin.c zzip/stat.c zzip/write.c zzip/zip.c
 
include $(BUILD_SHARED_LIBRARY)
