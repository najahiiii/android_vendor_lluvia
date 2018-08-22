# LLuviaOS apps
#PRODUCT_PACKAGES += \

# LLuvia Theme
include vendor/lluvia/themes/config.mk

# LLuvia props
$(call inherit-product, vendor/lluvia/config/lluvia_props.mk)

# Call Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/lluvia/themes/overlay/common
