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

include device/sony/loire/PlatformConfig.mk

TARGET_BOOTLOADER_BOARD_NAME := unknown
ifneq (,$(filter %f5121,$(TARGET_PRODUCT)))
TARGET_BOOTLOADER_BOARD_NAME := F5121
else ifneq (,$(filter %f5122,$(TARGET_PRODUCT)))
TARGET_BOOTLOADER_BOARD_NAME := F5122
else
TARGET_BOOTLOADER_BOARD_NAME := F5121
$(warning Unrecognized value for TARGET_PRODUCT: "$(TARGET_PRODUCT)", using default value: "$(TARGET_BOOTLOADER_BOARD_NAME)")
endif

# Platform
PRODUCT_PLATFORM := loire

BOARD_KERNEL_CMDLINE += androidboot.hardware=suzu

# Partition information
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 7843348480
BOARD_ODMIMAGE_PARTITION_SIZE := 419430400
# Reserve space for data encryption (22225616896-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 22225600512

#TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/clearpad/wakeup_gesture"
