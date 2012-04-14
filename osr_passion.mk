# Release name
PRODUCT_RELEASE_NAME := NexusOne


$(call inherit-product, vendor/osr/products/asian.mk)

$(call inherit-product, vendor/osr/products/high_telephony_device.mk)

$(call inherit-product, vendor/osr/products/hdpi.mk)

$(call inherit-product, device/htc/passion/passion.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := osr_passion
PRODUCT_BRAND := google
PRODUCT_DEVICE := passion
PRODUCT_MODEL := Nexus One
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=passion BUILD_ID=GRJ22 BUILD_FINGERPRINT=google/passion/passion:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.4 GRJ22 121341 release-keys"

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-2.6.37
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=aosp_HAVS_mahimahi_defconfig

# Extra Passion overlay
PRODUCT_PACKAGE_OVERLAYS += device/htc/passion-common/overlay

# Extra RIL settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2

# Inherit Flash Player	
-include vendor/osr/products/flashplayer.mk

# Inherit drm blobs
#-include vendor/osr/products/drm.mk

# Inherit Gapps blobs
#-include vendor/osr/products/common_gapps.mk
