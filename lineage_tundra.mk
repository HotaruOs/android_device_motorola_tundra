#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tundra device
$(call inherit-product, device/motorola/tundra/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_tundra
PRODUCT_DEVICE := tundra
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30 fusion

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tundra_g-user 14 U1SJS34.2-92-10-2 263481-6419b2 release-keys" \
    BuildFingerprint=motorola/tundra_g/tundra:14/U1SJS34.2-92-10-2/263481-6419b2:user/release-keys \
    DeviceProduct=tundra_g

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Device Identifier 
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon 888+" \
    RisingMaintainer="HotaruOs"

# Gapps:
WITH_GMS := true
RISING_PACKAGE_TYPE := GAPPS
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# UDFPS
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true

# Blur 
TARGET_ENABLE_BLUR := true

# Camera 
PRODUCT_NO_CAMERA := true
