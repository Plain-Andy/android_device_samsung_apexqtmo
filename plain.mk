$(call inherit-product, device/samsung/apexqtmo/full_apexqtmo.mk)

# Inherit some common plain stuff
$(call inherit-product, vendor/plain/config/common.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/plain/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/plain/config/nfc_enhanced.mk)

# Aroma installer device overlay
$(call inherit-product, device/samsung/apexqtmo/aroma/aroma.mk)

PRODUCT_NAME := plain_apexqtmo
PRODUCT_DEVICE := apexqtmo
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-T699
PRODUCT_MANUFACTURER := samsung

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/plain/prebuilt/bootanimation/480.zip:system/media/bootanimation.zip

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=apexqtmo TARGET_DEVICE=apexqtmo BUILD_FINGERPRINT="samsung/apexqtmo/apexqtmo:4.1.2/JZO54K/T699UVBMC5:user/release-keys" PRIVATE_BUILD_DESC="apexqtmo-user 4.1.2 JZO54K T699UVBMC5 release-keys"
