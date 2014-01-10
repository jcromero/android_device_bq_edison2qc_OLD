#
# Copyright (C) 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

-include vendor/bq/edison2qc/BoardConfigVendor.mk

-include device/bq/rockchip-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := bq_edison2qc

TARGET_OTA_ASSERT_DEVICE := edison2qc,bq_edison2qc

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/bq/edison2qc/bluetooth

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 576716800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14906032128
BOARD_FLASH_BLOCK_SIZE := 16384

# Kernel
TARGET_KERNEL_SOURCE := kernel/bq/edison2qc
TARGET_KERNEL_CONFIG := cyanogenmod_edison2qc_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
BOARD_USES_UNCOMPRESSED_BOOT := true
