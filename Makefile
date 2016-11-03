ARCHS = armv7 arm64
include theos/makefiles/common.mk

TWEAK_NAME = AnghamiNoAds
AnghamiNoAds_FILES = AnghamiNoAds.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
