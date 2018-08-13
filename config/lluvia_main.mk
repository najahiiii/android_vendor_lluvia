# LLuviaOS apps
PRODUCT_PACKAGES += \
     MarkupGoogle

# Markup libs
PRODUCT_COPY_FILES += \
    vendor/lluvia/prebuilt/common/lib/libsketchology_native.so:system/lib/libsketchology_native.so \
    vendor/lluvia/prebuilt/common/lib64/libsketchology_native.so:system/lib64/libsketchology_native.so

# LLuvia Theme
include vendor/lluvia/themes/config.mk

# LLuvia props
$(call inherit-product, vendor/lluvia/config/lluvia_props.mk)

# Call Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/lluvia/themes/overlay/common
