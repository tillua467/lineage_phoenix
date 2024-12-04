#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from phoenix device
$(call inherit-product, device/xiaomi/phoenix/device.mk)

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Custom stuff.
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_USE_PIXEL_FINGERPRINT := true
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true

# Evolution X Build Type & Maintainer stuff.
EVO_BUILD_TYPE := Unofficial

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BUILD_APERTURE_CAMERA := false

# Build Fingerprint.
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="phoenix-user 11 RKQ1.200826.002 21.9.28 release-keys" \
    BuildFingerprint=Redmi/phoenix/phoenix:11/RKQ1.200826.002/21.9.28:user/release-keys


PRODUCT_NAME := lineage_phoenix
PRODUCT_DEVICE := phoenix
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30
PRODUCT_MANUFACTURER := Xiaomi


