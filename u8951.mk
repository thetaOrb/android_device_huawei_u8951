#
# Copyright 2014 The Android Open Source Project
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

# Inherit the msm7x27a-common definitions
$(call inherit-product, device/huawei/msm7x27a/msm7x27a.mk)

# Include vendor blobs
$(call inherit-product-if-exists, vendor/huawei/u8951/vendor-blobs.mk)

# Include configs
$(call inherit-product, device/huawei/u8951/configs/configs.mk)

# Include input
$(call inherit-product, device/huawei/u8951/input/input.mk)

# Include ramdisk
$(call inherit-product, device/huawei/u8951/rootdir/rootdir.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/huawei/u8951/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml

# Dalvik params
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.confg.hw_appfsversion=U8951V4_4_SYSIMG \
    ro.confg.hw_appsbootversion=U8951V4_4_APPSBOOT \
    ro.confg.hw_appversion=U8951V4_4_KERNEL

PRODUCT_PROPERTY_OVERRIDES += \
    gsm.version.baseband=2030 \
    rild.libpath=/system/lib/libril-qc-1.so \
    ro.telephony.ril.v3=qcomdsds,skippinpukcount \
    ro.telephony.ril_class=HuaweiQualcommRIL

# Debug
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0

$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

# Languages
PRODUCT_LOCALES := ru_RU en_US
