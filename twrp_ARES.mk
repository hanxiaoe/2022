#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from ARES device
$(call inherit-product, device/chinatelecom/ARES/device.mk)

PRODUCT_DEVICE := ARES
PRODUCT_NAME := twrp_ARES
PRODUCT_BRAND := Tianyi1Hao2022
PRODUCT_MODEL := TYH212U
PRODUCT_MANUFACTURER := chinatelecom

PRODUCT_GMS_CLIENTID_BASE := android-meizu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ums9620_2h10_ctcc-user 11 RP1A.201005.001 1683693954 release-keys"

BUILD_FINGERPRINT := UNISOC/ums9620_2h10_ctcc/ums9620_2h10:11/RP1A.201005.001/1683693954:user/release-keys
