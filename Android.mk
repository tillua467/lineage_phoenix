#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),phoenix)

include $(call all-makefiles-under,$(LOCAL_PATH))

ifeq ($(TARGET_DEVICE),phoenix)

include $(call all-makefiles-under,$(LOCAL_PATH))

# Add module definition for libhvx_interface

include $(CLEAR_VARS)
LOCAL_MODULE := libhvx_interface
LOCAL_SRC_FILES := proprietary/vendor/lib64/libhvx_interface.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT)/system/lib64
LOCAL_SHARED_LIBRARIES := liblog libcdsprpc libm libc
DISABLE_ELFCHECK := true

include $(BUILD_SHARED_LIBRARY)

endif


endif
