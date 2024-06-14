#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from venus device
$(call inherit-product, device/xiaomi/venus/device.mk)

PRODUCT_DEVICE := venus
PRODUCT_NAME := omni_venus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 11 Ultra
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_venus-eng 14 SP2A.220405.004 eng.sekaia.20240117.105530 test-keys"

BUILD_FINGERPRINT := Xiaomi/twrp_venus/venus:14/SP2A.220405.004/sekaiacg01171054:eng/test-keys

# Define additional properties if needed
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.cpu.abi=arm64-v8a \
    ro.product.cpu.abi2=armeabi-v7a \
    ro.product.cpu.abilist=arm64-v8a,armeabi-v7a,armeabi \
    ro.product.cpu.abilist32=armeabi-v7a,armeabi \
    ro.product.cpu.abilist64=arm64-v8a
