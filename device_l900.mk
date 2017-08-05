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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

$(call inherit-product-if-exists, vendor/lanix/l900/l900-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lanix/l900/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lanix/l900/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# etc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/prebuilts/listen_platform_info.xml:system/etc/listen_platform_info.xml \
    $(LOCAL_PATH)/prebuilts/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/prebuilts/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_qrd_skuh.xml:system/etc/mixer_paths_qrd_skuh.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_qrd_skui.xml:system/etc/mixer_paths_qrd_skui.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_qrd_skuhf.xml:system/etc/mixer_paths_qrd_skuhf.xml \
    $(LOCAL_PATH)/prebuilts/nfcee_access.xml:system/etc/nfcee_access.xml \
    $(LOCAL_PATH)/prebuilts/nfc-nci.conf:system/etc/nfc-nci.conf \
    $(LOCAL_PATH)/prebuilts/sec_config:system/etc/sec_config \
    $(LOCAL_PATH)/prebuilts/whitelist_appops.xml:system/etc/whitelist_appops.xml

# Feature definition files for msm8916
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# ANT+ stack
PRODUCT_PACKAGES += \
    AntHalService \
    libantradio \
    antradio_app \
    com.dsi.ant.antradio_library

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.msm8916 \
    audio_policy.msm8916 \
    libaudio-resampler

# CRDA
PRODUCT_PACKAGES += \
    crda \
    linville.key.pub.pem \
    regdbdump \
    regulatory.bin

# Camera
PRODUCT_PACKAGES += \
    camera.msm8916 \
    libxml2

# Display
PRODUCT_PACKAGES += \
    copybit.msm8916 \
    gralloc.msm8916 \
    libmemalloc \
    memtrack.msm8916 \
    hwcomposer.msm8916 \
    liboverlay \
    libgenlock \
    libqdutils \
    libqdMetaData

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    fibmap.f2fs \
    fsck.f2fs \
    make_ext4fs \
    mkfs.f2fs \
    resize2fs \
    setup_fs

# Flatland
PRODUCT_PACKAGES += \
    flatland

# FM
PRODUCT_PACKAGES += \
    FM2 \
    FMRecord \
    libqcomfm_jni \
    qcom.fmradio

#fstab.qcom
PRODUCT_PACKAGES += \
    fstab.qcom

PRODUCT_PACKAGES += \
    libqcomvisualizer \
    libqcompostprocbundle

# Keylayout
PRODUCT_PACKAGES += \
    gpio-keys.kl \
    synaptics_rmi4_i2c.kl

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8916

# Torch
PRODUCT_PACKAGES += \
    Torch

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libstagefrighthw

# Power HAL
PRODUCT_PACKAGES += \
    power.msm8916

# QRNG
PRODUCT_PACKAGES += \
    qrngd \
    qrngp    

# Prebuilt binary
PRODUCT_PACKAGES += \
    chargelog.sh \
    huawei_version \
    hw_scsi_switch \
    libqmi_oem_main \
    rmt_oeminfo \
    rmt_storage \
    test_diag \
    test_oeminfo \
    usb_update

# Recovery
PRODUCT_PACKAGES += \
    recoverylog.sh \
    minivold

# ETC
PRODUCT_PACKAGES += \
    hcidump.sh \
    hsic.control.bt.sh \
    init.ath3k.bt.sh \
    init.crda.sh \
    init.qcom.audio.sh \
    init.qcom.bt.sh \
    init.qcom.coex.sh \
    init.qcom.efs.sync.sh \
    init.qcom.fm.sh \
    init.qcom.modem_links.sh \
    init.qcom.post_boot.sh \
    init.qcom.rootagent.sh \
    init.qcom.sdio.sh \
    init.qcom.uicc.sh \
    init.qcom.wifi.sh \
    qca6234-service.sh \
    renice-loggers.sh

# Ramdisk
PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.factory.sh \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.ssr.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.qti.carrier.rc \
    init.target.rc \
    ueventd.qcom.rc

# Sensors
PRODUCT_PACKAGES += \
    sensors.msm8916 \
    libcalmodule_akm \
    calmodule.cfg

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Vold
PRODUCT_PACKAGES += \
    vold.fstab

# Wifi
PRODUCT_PACKAGES += \
    libcurl \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    wcnss_service

PRODUCT_PACKAGES += \
    hostapd.accept \
    hostapd.deny \
    hostapd_default.conf

PRODUCT_PACKAGES += \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf

#Set default profile to FUT
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.logkit.ctrlcode=1

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=96m

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.strict_op_enable=false

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.whitelist=/system/etc/whitelist_appops.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/vendor/lib/libqc-opt.so \
    persist.radio.apm_sim_not_pwdn=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

# model and config device
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.model=G620S-L01
    ro.product.name=G620S-L01

# set acdb path
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.calfile0=/etc/Bluetooth_cal.acdb \
    persist.audio.calfile1=/etc/General_cal.acdb \
    persist.audio.calfile2=/etc/Global_cal.acdb \
    persist.audio.calfile3=/etc/Handset_cal.acdb \
    persist.audio.calfile4=/etc/Hdmi_cal.acdb \
    persist.audio.calfile5=/etc/Headset_cal.acdb \
    persist.audio.calfile6=/etc/Speaker_cal.acdb

# Recovery
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.forbid_format=/fsg,/firmware,/persist,/boot

$(call inherit-product, build/target/product/full.mk)

$(call inherit-product-if-exists, vendor/huawei/g620s/g620s-vendor.mk)

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_l900
PRODUCT_DEVICE := l900
