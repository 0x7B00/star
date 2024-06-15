
DEVICE_PATH := device/xiaomi/venus

# Inherit from device.mk configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Release name
PRODUCT_RELEASE_NAME := star

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := venus
PRODUCT_NAME := twrp_star
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 11 Ultra
PRODUCT_MANUFACTURER := Xiaomi

# Assert
TARGET_OTA_ASSERT_DEVICE := star,mars
