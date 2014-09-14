# Versioning of the ROM


TARGET_PRODUCT_SHORT := $(TARGET_PRODUCT)
TARGET_PRODUCT_SHORT := $(subst omni_,,$(TARGET_PRODUCT_SHORT))

# Build the final version string

    ROM_VERSION := $(shell date -u +%Y%m%d)-$(TARGET_PRODUCT_SHORT)

# Apply it to build.prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=OmniPlus-$(ROM_VERSION) \
    ro.omni.version=$(ROM_VERSION)
