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
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_star-eng 14 SP2A.220405.004 eng.sekaia.20240117.105530 test-keys"

BUILD_FINGERPRINT := Xiaomi/twrp_star/venus:14/SP2A.220405.004/sekaiacg01171054:eng/test-keys
