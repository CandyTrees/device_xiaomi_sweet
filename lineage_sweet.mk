#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device.
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit some common Lunaris-AOSP stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# BCR
WITH_BCR := true

# Enable blur
TARGET_ENABLE_BLUR := true

# Targets
TARGET_DISABLE_LINEAGE_SDK := false
TARGET_DISABLE_EPPE := false
TARGET_DISABLE_MATLOG := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BUILD_DEVICE_AS_WEBCAM := true
TARGET_USES_VULKAN := false

# UDFPS properties
TARGET_CUSTOM_UDFPS := false

# Others
BYPASS_CHARGE_SUPPORTED := true
USE_REALITY_ENGINE := true
USE_ADVANCED_DISPLAY_COLOR := true
SURFACE_FLINGER_BOOST := true

# Device identifier
PRODUCT_NAME := lineage_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

# GMS
ifeq ($(WITH_GMS),true)
TARGET_CALL_RECORDING_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
WITH_PIXEL_LAUNCHER := true
TARGET_DOES_NOT_SUPPORT_GOOGLE_BATTERY := true
WITH_GMS_COMMS_SUITE := true
WITH_GMS_AICORE := true
TARGET_USE_MAPS := true
TARGET_USE_FILES := true
TARGET_USE_GPHOTOS := true
TARGET_USE_WALLPAPERS := true
endif
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Properties
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sweet_global-user 13 TKQ1.221013.002 V14.0.9.0.TKFMIXM release-keys" \
    BuildFingerprint=Redmi/sweet_global/sweet:13/TKQ1.221013.002/V14.0.9.0.TKFMIXM:user/release-keys

# Signing keys
$(call inherit-product, vendor/lunaris-priv/keys/keys.mk)
