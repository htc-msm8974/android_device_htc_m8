$(call inherit-product, device/htc/m8/full_m8.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := vendor/du/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/du/config/common.mk)
$(call inherit-product, vendor/du/config/gsm.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/htc/m8/device.mk)       

PRODUCT_NAME := du_m8
PRODUCT_DEVICE := m8
PRODUCT_BRAND := htc
PRODUCT_MODEL := One M8
PRODUCT_MANUFACTURER := HTC
