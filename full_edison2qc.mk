#
# Copyright (C) 2014 The CyanogenMod Project
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

# This file is the build configuration for a full Android
# build for edison2qc hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and edison2qc, hence its name.

# Inherit from the common open source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/bq/edison2qc/device.mk)
$(call inherit-product, device/bq/rockchip-common/device-common.mk)
$(call inherit-product, vendor/bq/edison2qc/edison2qc-vendor.mk)
$(call inherit-product, vendor/bq/rockchip-common/rockchip-vendor.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := edison2qc
PRODUCT_DEVICE := edison2qc
PRODUCT_BRAND := bq
PRODUCT_MODEL := bq Edison 2 Quad Core
PRODUCT_MANUFACTURER := Rockchip
