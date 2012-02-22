$(call inherit-product, vendor/SuperTeam/products/high_telephony_device.mk)

$(call inherit-product, vendor/SuperTeam/products/flash.mk)

$(call inherit-product, vendor/SuperTeam/products/hdpi.mk)

$(call inherit-product, device/htc/passion/passion.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := team_passion
PRODUCT_BRAND := google
PRODUCT_DEVICE := passion
PRODUCT_MODEL := Nexus One
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=passion BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=google/passion/passion:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.4 GRJ22 121341 release-keys"

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-2.6.37
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=aosp_HAVS_mahimahi_defconfig

# Extra Passion overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/SuperTeam/overlay/passion

# Extra RIL settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2

PRODUCT_VERSION_MAINTENANCE := 9999
