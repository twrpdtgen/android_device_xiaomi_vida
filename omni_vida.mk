#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from vida device
$(call inherit-product, device/xiaomi/vida/device.mk)

PRODUCT_DEVICE := vida
PRODUCT_NAME := omni_vida
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := vida
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vida-user 11 RP1A.200720.011 V13.0.6.0.RGDINXM release-keys"

BUILD_FINGERPRINT := Redmi/vida_in/vida:11/RP1A.200720.011/V13.0.6.0.RGDINXM:user/release-keys
