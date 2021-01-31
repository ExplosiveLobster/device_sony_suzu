# Copyright 2021, Pavel Dubrova <pashadubrova@gmail.com>
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

LOCAL_PATH := device/sony/suzu

# Device overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# AAPT configuration
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio Calibration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/vendor/etc/acdbdata/Bluetooth_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Bluetooth_cal.acdb \
    $(LOCAL_PATH)/rootdir/vendor/etc/acdbdata/General_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/General_cal.acdb \
    $(LOCAL_PATH)/rootdir/vendor/etc/acdbdata/Global_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Global_cal.acdb \
    $(LOCAL_PATH)/rootdir/vendor/etc/acdbdata/Handset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Handset_cal.acdb \
    $(LOCAL_PATH)/rootdir/vendor/etc/acdbdata/Hdmi_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Hdmi_cal.acdb \
    $(LOCAL_PATH)/rootdir/vendor/etc/acdbdata/Headset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Headset_cal.acdb \
    $(LOCAL_PATH)/rootdir/vendor/etc/acdbdata/Speaker_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Speaker_cal.acdb

# Audio Configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/vendor/etc/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Bluetooth Firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/vendor/firmware/BCM4345C0.hcd:$(TARGET_COPY_OUT_VENDOR)/firmware/BCM4345C0.hcd

# Camera Configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/vendor/etc/camera/camera_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/camera_config.xml \
    $(LOCAL_PATH)/rootdir/vendor/etc/camera/imx214_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/imx214_chromatix.xml \
    $(LOCAL_PATH)/rootdir/vendor/etc/camera/imx300_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/imx300_chromatix.xml

# Fstab
PRODUCT_COPY_FILES += \
    device/sony/loire/rootdir/vendor/etc/fstab.loire:$(TARGET_COPY_OUT_RAMDISK)/fstab.suzu \
    device/sony/loire/rootdir/vendor/etc/fstab.loire:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.suzu

# Init
PRODUCT_COPY_FILES += \
    device/sony/loire/rootdir/vendor/etc/init/hw/init.loire.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.suzu.rc \
    device/sony/loire/rootdir/vendor/etc/init/hw/init.loire.pwr.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.suzu.pwr.rc \
    device/sony/loire/rootdir/vendor/etc/init/hw/init.loire.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.suzu.usb.rc

# Init Recovery
PRODUCT_COPY_FILES += \
    device/sony/loire/rootdir/init.recovery.rc:recovery/root/init.recovery.suzu.rc

# NFC Configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/vendor/etc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf    

# Sensors Configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/vendor/etc/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf

# Wi-Fi Firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/vendor/firmware/bcmdhd.cal:$(TARGET_COPY_OUT_VENDOR)/firmware/brcm/brcmfmac43455-sdio.txt

# Display density
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=480 

# USB PID Sufix
PRODUCT_PROPERTY_OVERRIDES += \
    ro.usb.pid_suffix=1E0

$(call inherit-product, device/sony/loire/platform.mk)
