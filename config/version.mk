PRODUCT_VERSION_MAJOR := 4
PRODUCT_VERSION_MINOR := 7
PRODUCT_VERSION_PATCH := 6
PRODUCT_VERSION_EXTRA :=

ifneq ($(OFFICIAL_BUILD),true)
PRODUCT_VERSION_EXTRA += -UNOFFICIAL
endif

CALYXOS_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_PATCH)$(strip $(PRODUCT_VERSION_EXTRA))

# BUILD_NUMBER
# last 2 of year,    yy * 10000000
# PRODUCT_VERSION_MAJOR * 100000
# PRODUCT_VERSION_MINOR * 1000
# PRODUCT_VERSION_PATCH * 10
# Last digit reserved
# Examples:
# 4.0.0 -> 22400000, otatest 22400001
# 4.0.1 -> 22400010
# 4.1.0 -> 22401000
# 4.10.10 -> 22410100
