TARGET := iphone:6.0:6.1.3
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ndbstock

ndbstock_FILES = Tweak.xm
ndbstock_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
