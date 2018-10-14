# LLuviaOS apps
PRODUCT_PACKAGES += \
     MarkupGoogle \
     WellbeingPrebuilt \
     LatinIME \
     PixelLauncher3

# Markup libs
ifeq ($(TARGET_ARCH),arm64)
PRODUCT_COPY_FILES += \
    vendor/lluvia/prebuilt/common/lib/libsketchology_native.so:system/lib/libsketchology_native.so \
    vendor/lluvia/prebuilt/common/lib64/libsketchology_native.so:system/lib64/libsketchology_native.so

else
PRODUCT_COPY_FILES += \
    vendor/lluvia/prebuilt/common/lib/libsketchology_native.so:system/lib/libsketchology_native.so
endif

# Pixel sysconfig
PRODUCT_COPY_FILES += \
    vendor/lluvia/prebuilt/common/etc/sysconfig/pixel.xml:system/etc/sysconfig/pixel.xml
    vendor/lluvia/prebuilt/common/etc/sysconfig/google-hiddenapi-package-whitelist.xml:system/etc/sysconfig/google-hiddenapi-package-whitelist.xml

# LLuvia Theme
include vendor/lluvia/themes/config.mk

# LLuvia props
$(call inherit-product, vendor/lluvia/config/lluvia_props.mk)

# Call Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/lluvia/themes/overlay/common

# Clean cache
PRODUCT_COPY_FILES += \
    vendor/lluvia/prebuilt/common/bin/clean_cache.sh:system/bin/clean_cache.sh
