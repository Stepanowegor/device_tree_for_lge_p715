$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/p715/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/configs/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

$(call inherit-product, build/target/product/full.mk)

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# BT
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.bt.sh:system/etc/init.qcom.bt.sh

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.vee7.rc:root/init.vee7.rc \
	$(LOCAL_PATH)/init.vee7.usb.rc:root/init.vee7.usb.rc \
	$(LOCAL_PATH)/ueventd.vee7.rc:root/ueventd.vee7.rc \

PRODUCT_COPY_FILES := \
	device/lge/p715/prebuilt/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
	device/lge/p715/prebuilt/wlan.ko:system/lib/modules/wlan.ko \
	device/lge/p715/prebuilt/volans/WCN1314_rf.ko:system/lib/modules/volans/WCN1314_rf.ko \

# HW HALS
PRODUCT_PACKAGES += \
    libgenlock \
    liboverlay \
    gralloc.msm7627a \
    hwcomposer.msm7627a \
    copybit.msm7627a \
    audio.a2dp.default \
    audio.primary.msm7627a \
    audio_policy.msm7627a \
    libtilerenderer \
    libQcomUI

PRODUCT_PACKAGES += \
    camera.msm7627a \
    libmmcamera_interface2 \
    libmmcamera_interface

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Light control
PRODUCT_PACKAGES := \
    lights.msm7627a

# OMX 
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore

# Common properties
PRODUCT_PROPERTY_OVERRIDES += \
    debug.fb.rgb565=0 \
    debug.sf.hw=1 \
    debug.composition.type=mdp \
    ro.opengles.version=131072 \
    com.qc.hardware=true \
    persist.sys.use_dithering=1 \
    wifi.interface=wlan0 \
    rild.libpath=/system/lib/libril-qc-1.so \
    ro.telephony.ril_class=LGEQualcommUiccRIL \
    ro.telephony.default_network=0 \
    telephony.lteOnGsmDevice=0 \
    persist.sys.usb.config=mtp,adb \
    hwui.render_dirty_regions=true \
    ro.max.fling_velocity=4000 \
    sys.mem.max_hidden_apps=3

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_p715
PRODUCT_DEVICE := p715
