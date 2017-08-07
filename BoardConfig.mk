USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lanix/l900/BoardConfigVendor.mk

LOCAL_PATH := device/lanix/l900
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8916
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916


# Audio
BOARD_USES_ALSA_AUDIO := true
TARGET_QCOM_AUDIO_VARIANT := caf
AUDIO_FEATURE_MDM_DETECT := true

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive 
TARGET_KERNEL_SOURCE := kernel/lanix/msm8916
TARGET_KERNEL_CONFIG := cyanogenmod_l900_defconfig
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# fix this up by examining /proc/mtd on a running device
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x02000000
BOARD_CACHEIMAGE_PARTITION_SIZE := 274726912
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x02000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1702887424 
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12936655872 
BOARD_FLASH_BLOCK_SIZE := 131072

# adb has root
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mass_storage

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_USE_VENDOR_CAMERA_EXT := true

# Graphics
TARGET_QCOM_DISPLAY_VARIANT := caf-new
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_HAVE_HDMI_OUT := false
TARGET_USES_OVERLAY := true
TARGET_USES_C2D_COMPOSITION := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
BOARD_EGL_CFG := $(LOCAL_PATH)/prebuilts/egl.cfg
TARGET_HARDWARE_3D := false
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
USE_OPENGL_RENDERER := true

# l900 init
TARGET_LIBINIT_MSM8916_DEFINES_FILE := $(DEVICE_PATH)/init/init_l900.cpp
TARGET_UNIFIED_DEVICE := true


WLAN_MODULES:
	ln -sf /system/lib/modules/pronto/pronto_wlan.ko $(TARGET_OUT)/lib/modules/wlan.ko

TARGET_KERNEL_MODULES += WLAN_MODULES

# Media
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_QCOM_MEDIA_VARIANT := caf-new

# Qualcomm Hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# Web
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 131072 
BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1879048192
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4513037312

# Recovery
#RECOVERY_VARIANT := twrp
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
TARGET_USERIMAGES_USE_EXT4 := trueFORMAT := "RGBA_8888"
DEVICE_RESOLUTION := 720x1280

# Assert
TARGET_OTA_ASSERT_DEVICE := l900

# Enable suspend during charger mode
BOARD_CHARGER_ENABLE_SUSPEND := true

# Liblight
TARGET_PROVIDES_LIBLIGHT := true

# Power
TARGET_POWERHAL_VARIANT := qcom

# Encryption
TARGET_HW_DISK_ENCRYPTION := true

# USB Mounting
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
BOARD_VOLD_MAX_PARTITIONS := 30

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"
WPA_SUPPLICANT_VERSION := VER_0_8_X
TARGET_USES_WCNSS_CTRL := true
