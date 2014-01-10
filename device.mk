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

PRODUCT_AAPT_CONFIG := normal mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

DEVICE_PACKAGE_OVERLAYS += device/bq/edison2qc/overlay

# Hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml

# Config files
PRODUCT_COPY_FILES += \
    device/bq/edison2qc/config/media_profiles.xml:system/etc/media_profiles.xml

# Rootdir
PRODUCT_COPY_FILES += \
    device/bq/edison2qc/rootdir/init.rk30board.rc:root/init.rk30board.rc \
    device/bq/edison2qc/rootdir/rk30xxnand.ko.3.0.36+:root/rk30xxnand.ko.3.0.36+ \
    $(call find-copy-subdir-files,*,device/bq/edison2qc/rootdir/images,root/res/images/charger)

# Charger
PRODUCT_PACKAGES += \
    charger

# Default config
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160
