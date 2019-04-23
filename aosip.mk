# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit from platina device
$(call inherit-product, device/xiaomi/platina/device.mk)

# Inherit some common AOSiP stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

PRODUCT_NAME := aosip_platina
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := platina
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi 8 Lite

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="platina" \
    PRODUCT_NAME="platina" \
    BUILD_FINGERPRINT="Xiaomi/platina/platina:9/PKQ1.181007.001/10.2.3.0:user/release-keys" \
    PRIVATE_BUILD_DESC="platina-user 9 PKQ1.181007.001 10.2.3.0 release-keys"

TARGET_VENDOR := Xiaomi
