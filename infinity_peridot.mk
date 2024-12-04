#
# Copyright (C) 2024 The infinityOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common infinity stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Inherit from peridot device
$(call inherit-product, device/xiaomi/peridot/device.mk)

# Inherit from the MiuiCamera setup
$(call inherit-product-if-exists, device/xiaomi/peridot-miuicamera/device.mk)

PRODUCT_NAME := infinity_peridot
PRODUCT_DEVICE := peridot
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 24069PC21G

PRODUCT_SYSTEM_NAME := peridot_global
PRODUCT_SYSTEM_DEVICE := peridot
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi


PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="peridot_global-user 14 UKQ1.240116.001 V816.0.9.0.UNPMIXM release-keys" \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \

BUILD_FINGERPRINT := POCO/peridot_global/peridot:14/UKQ1.240116.001/V816.0.9.0.UNPMIXM:user/release-keys

# Infinity-X Flags
INFINITY_BUILD_TYPE := OFFICIAL
INFINITY_MAINTAINER := AtharvaSwamy
TARGET_SUPPORTS_BLUR := true
TARGET_HAS_UDFPS := true
WITH_GAPPS := true
