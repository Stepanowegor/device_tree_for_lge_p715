# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Arch related definitions
TARGET_BOARD_PLATFORM := msm7627a
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# Target information
TARGET_NO_BOOTLOADER := true

TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := vee7
TARGET_BOOTLOADER_NAME=vee7ds

BOARD_WLAN_DEVICE := qcwcn
WIFI_EXT_MODULE_PATH := /system/lib/modules/librasdioif.ko
WIFI_DRIVER_MODULE_PATH := /system/lib/modules/wlan.ko
WIFI_EXT_MODULE_NAME := librasdioif
WIFI_DRIVER_MODULE_NAME := wlan
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WEXT_NO_COMBO_SCAN := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 880803840 # 840M

BOARD_USERDATAIMAGE_PARTITION_SIZE := 6189744128 # 5.9G
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

BOARD_USES_SECURE_SERVICES := true

BOARD_USES_EXTRA_THERMAL_SENSOR := true
BOARD_USES_CAMERA_FAST_AUTOFOCUS := true

TARGET_NO_RPC := true

BOARD_CHARGER_ENABLE_SUSPEND := true

BOARD_HAVE_LOW_LATENCY_AUDIO := true

BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_BSP_CAMERA_ABI_HACK
TARGET_QCOM_DISPLAY_VARIANT := caf
#TARGET_QCOM_AUDIO_VARIANT := caf

BOARD_RIL_CLASS := ../../../device/lge/vee7/ril/

BOARD_SEPOLICY_DIRS += \
        device/lge/surf/sepolicy

BOARD_SEPOLICY_UNION += \
file_contexts \
property_contexts \
te_macros \
bluetooth_loader.te \
bridge.te \
camera.te \
conn_init.te \
device.te \
dhcp.te \
domain.te \
drmserver.te \
file.te \
kickstart.te \
init.te \
mediaserver.te \
mpdecision.te \
netmgrd.te \
property.te \
qmux.te \
rild.te \
rmt.te \
sensors.te \
surfaceflinger.te \
system.te \
tee.te \
thermald.te \
ueventd.te \
wpa_supplicant.te
