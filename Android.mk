#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),phoenix)

include $(call all-makefiles-under,$(LOCAL_PATH))

LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
endif

