#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),phoenix)

include $(call all-makefiles-under,$(LOCAL_PATH))

# Add module definition for libhvx_interface
include $(CLEAR_VARS)
LOCAL_MODULE := libhvx_interface
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_SRC_FILES := vendor/lib64/libhvx_interface.so
LOCAL_CHECK_ELF_FILES := false
LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
LOCAL_SHARED_LIBRARIES := \
    liblog \
    libcdsprpc \
    libsdsprpc

include $(BUILD_PREBUILT)

endif

