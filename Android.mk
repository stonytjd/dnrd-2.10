# Copyright 2005 The Android Open Source Project

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	args.c cache.c common.c dns.c lib.c main.c master.c \
	query.c relay.c sig.c tcp.c udp.c

LOCAL_CFLAGS+= -D__GNU_LIBRARY__ -DENABLE_CACHE

LOCAL_C_INCLUDES :=$(LOCAL_PATH)/../include
LOCAL_SHARED_LIBRARIES := \
    libutils \
    libbinder \
    libcutils

LOCAL_MODULE := dnrd
LOCAL_MODULE_TAGS := eng

include $(BUILD_EXECUTABLE)
