#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamoleb device
$(call inherit-product, device/oneplus/guacamoleb/device.mk)

# Inherit some common RisingOS stuff.
$(call inherit-product, vendor/rising/config/rising.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := rising_guacamoleb
PRODUCT_DEVICE := guacamoleb
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := GM1905
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7
PRODUCT_SYSTEM_DEVICE := OnePlus7

PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# RisingOS Build Flags.
RISING_MAINTAINER := NILOY

# RisingOS Extra Flags.
WITH_GMS := true
TARGET_HAS_UDFPS := true

# RisingOS Specs.
RISING_RAM := 8GB
RISING_STORAGE := 256GB
RISING_BATTERY := 4085mAh
RISING_DISPLAY := 1440x3120
RISING_CHIPSET := Snapdragon™855

# Boot animation
scr_resolution := 1080
TARGET_SCREEN_HEIGHT := 2240
TARGET_SCREEN_WIDTH := 1080

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7/OnePlus7:12/SKQ1.211113.001/P.202303230244:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus7 \
    TARGET_NAME=OnePlus7 \
    PRIVATE_BUILD_DESC="OnePlus7-user 12 SKQ1.211113.001 P.202303230244 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
