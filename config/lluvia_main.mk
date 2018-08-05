# LLuviaOS apps
PRODUCT_PACKAGES += \
    Launcher3

# LLuvia Theme
include vendor/lluvia/themes/config.mk

# LLuvia props
$(call inherit-product, vendor/lluvia/config/lluvia_props.mk)
