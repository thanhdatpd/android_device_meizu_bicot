DEVICE_PATH := device/meizu/bicot
#ALLOW_MISSING_DEPENDENCIES := TRUE 
#RECOVERY_VARIANT := twrp
#TARGET_NO_RECOVERY := true
WITHOUT_CHECK_API := true

# for skip some eror because build with prebuilt kernel
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr/include/linux)
$(shell cp  -f $(DEVICE_PATH)/rootdir/ueventd.rc system/core/rootdir/)
#sepolicy for fix issues #43 in [ 17.703620] init: Service sysinit does not have a SELinux domain defined.
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicyFix
TARGET_PROVIDES_INIT_RC := true
PRODUCT_COPY_FILES += $(DEVICE_PATH)/rootdir/init.rc:root/init.rc
PRODUCT_COPY_FILES += $(DEVICE_PATH)/rootdir/ueventd.rc:root/ueventd.rc



BOARD_EGL_CFG := vendor/meizu/bicot/proprietary/lib/egl/egl.cfg
#BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

BOARD_NO_WIFI_HAL := true

PRODUCT_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Power
TARGET_TAP_TO_WAKE_NODE := "/proc/touchpanel/enable_dt2w"

# Properties
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# Root Folders
#BOARD_ROOT_EXTRA_FOLDERS := dsp firmware persist

# Sepolicy
#BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy


# Inherit from the proprietary version
-include vendor/meizu/bicot/BoardConfigVendor.mk
USE_LEGACY_AUDIO_POLICY := 1
USE_CUSTOM_AUDIO_POLICY :=0
# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

TARGET_OTA_ASSERT_DEVICE := m6note,m6n,m1721,M1721,M6Note,bicot



TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53



# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8953
TARGET_NO_BOOTLOADER := true

# Kernel
#TARGET_NO_KERNEL := true
BUILD_KERNEL_MODULES := flase
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78af000 androidboot.selinux=permissive buildvariant=eng
BOARD_KERNEL_CMDLINE += earlyprintk=nologger loglevel=7
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
TARGET_PREBUILT_KERNEL := device/meizu/bicot/prebuilt/boot.img-kernel
BOARD_KERNEL_IMAGE_NAME := boot.img-kernel
KERNEL_MAKE_FLAGS += CFLAGS_MODULE="-fno-pic"

# Platform
TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno
#TARGET_PLATFORM_DEVICE_BASE := /devices/soc/


# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 25027395072
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_CACHEIMAGE_PARTITION_SIZE := 446693376


# Workaround for error copying vendor files to recovery ramdisk
TARGET_COPY_OUT_VENDOR := system/vendor

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true

# TWRP specific build flags
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 35
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_NO_USB_STORAGE := true
TW_THEME := portrait_hdpi
TW_HAS_DOWNLOAD_MODE := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_HAS_REBOOT_EDL := true


#add when try fix building rom


# Debug
TWRP_INCLUDE_LOGCAT := true






######################
#just test, moved from msm8953-common to here
######################

VENDOR_PATH := device/meizu/bicot

# Init
#TARGET_INIT_VENDOR_LIB := libinit_msm8953
#TARGET_RECOVERY_DEVICE_MODULES := libinit_msm8953

TARGET_SPECIFIC_HEADER_PATH := $(VENDOR_PATH)/include


TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true


# ANT
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Audio
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_APE_OFFLOAD  := true
AUDIO_FEATURE_ENABLED_AUDIOSPHERE := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_CUSTOMSTEREO := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
#AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_SOURCE_TRACKING := true
AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_WMA_OFFLOAD  := true
AUDIO_FEATURE_ENABLED_EXT_AMPLIFIER := false
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1


# Bluetooth
BOARD_HAVE_BLUETOOTH := false
BOARD_HAVE_BLUETOOTH_QCOM := false
#BLUETOOTH_HCI_USE_MCT := true

# Camera
#USE_DEVICE_SPECIFIC_CAMERA := true
#BOARD_QTI_CAMERA_32BIT_ONLY := true
#TARGET_TS_MAKEUP := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true

# CNE / DPM
#BOARD_USES_QCNE := true

# Cpusets
#ENABLE_CPUSETS := true

# Crypto
#TARGET_HW_DISK_ENCRYPTION := false

# Dexpreopt
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif
WITH_DEXPREOPT_BOOT_IMG_ONLY ?= true

# Display
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true
#MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
#TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
#TARGET_USES_ION := false
#TARGET_USES_NEW_ION_API :=true
#TARGET_GRALLOC_VERSION := v3
TARGET_USES_GRALLOC1 := true
#TARGET_USES_HWC2 := true
#ARGET_USES_OVERLAY := true
#MAX_EGL_CACHE_KEY_SIZE := 12*1024
#MAX_EGL_CACHE_SIZE := 2048*1024

NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000
VSYNC_EVENT_PHASE_OFFSET_NS := 2000000


TARGET_USERIMAGES_USE_EXT4 := true

#FM
BOARD_HAVE_QCOM_FM := false
TARGET_QCOM_NO_FM_FIRMWARE := true

# GPS
USE_DEVICE_SPECIFIC_GPS := true
TARGET_NO_RPC := true

# Extended Filesystem Support
#TARGET_EXFAT_DRIVER := sdfat

# Filesystem
#TARGET_FS_CONFIG_GEN := $(VENDOR_PATH)/config.fs

# HIDL
#DEVICE_MANIFEST_FILE := $(VENDOR_PATH)/manifest.xml
#DEVICE_MATRIX_FILE   := $(VENDOR_PATH)/compatibility_matrix.xml


# Lineage Hardware
#BOARD_HARDWARE_CLASS += \
 #   $(VENDOR_PATH)/lineagehw

# Keymaster
#TARGET_PROVIDES_KEYMASTER := true

# Lights
#TARGET_PROVIDES_LIBLIGHT := true

# Media
TARGET_USES_MEDIA_EXTENSIONS := true



# Peripheral manager
TARGET_PER_MGR_ENABLED := true

# Power
TARGET_HAS_NO_WIFI_STATS := true
TARGET_USES_INTERACTION_BOOST := true

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true
TARGET_USE_SDCLANG := true

# RIL
TARGET_RIL_VARIANT := caf

# Recovery

TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab


# SELinux
include device/qcom/sepolicy/sepolicy.mk
#BOARD_SEPOLICY_DIRS += $(VENDOR_PATH)/sepolicy

# Wi-Fi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# Inherit from the proprietary version
# test: -include vendor/meizu/msm8953-common/BoardConfigVendor.mk
