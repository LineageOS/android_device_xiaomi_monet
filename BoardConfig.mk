#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm7250-common
include device/xiaomi/sm7250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/monet

BUILD_BROKEN_DUP_RULES := true

# Assert
TARGET_OTA_ASSERT_DEVICE := monet,milito

# Display
TARGET_SCREEN_DENSITY := 440

# Init
$(call soong_config_set,libinit,vendor_init_lib,//$(DEVICE_PATH):init_xiaomi_monet)
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_monet

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/xiaomi/monet/BoardConfigVendor.mk
