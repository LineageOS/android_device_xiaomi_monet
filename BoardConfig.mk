#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8250-common
include device/xiaomi/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/monet

BUILD_BROKEN_DUP_RULES := true

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel
TARGET_KERNEL_CONFIG := vendor/monet_user_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/sm7250

# Inherit from the proprietary version
include vendor/xiaomi/monet/BoardConfigVendor.mk
