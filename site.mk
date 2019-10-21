# Versionstring
DEFAULT_GLUON_RELEASE := 0.11.0a1b1+$(shell date '+%Y%m%d')

GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Default priority for updates
GLUON_PRIORITY ?= 7

# Languages to include
GLUON_LANGS ?= en de

# Region code required for some images; supported values: us eu
GLUON_REGION = eu

# Prefer ath10k firmware with 802.11s support
GLUON_WLAN_MESH = 11s

# Build gluon with multidomain support
GLUON_MULTIDOMAIN = 1

# Build targets that might get unsupported by Gluon in the future
GLUON_DEPRECATED = full

# TODO: research on every module and write documentation
GLUON_FEATURES := \
	autoupdater \
	config-mode-core \
	config-mode-domain-select \
	config-mode-geo-location-osm \
	ebtables-filter-multicast \
	ebtables-filter-ra-dhcp \
	mesh-batman-adv-15 \
	mesh-vpn-tunneldigger \
	radv-filterd \
	respondd \
	setup-mode \
	ssid-changer \
	status-page \
	web-advanced \
	web-private-wifi \
	web-wizard

GLUON_SITE_PACKAGES := \
	gluon-ssid-changer \
	haveged \
	iwinfo \

ifeq ($(GLUON_TARGET),x86-generic)
GLUON_SITE_PACKAGES += \
    kmod-usb-hid
endif

ifeq ($(GLUON_TARGET),x86-64)
GLUON_SITE_PACKAGES += \
    kmod-usb-hid
endif

ifeq ($(GLUON_TARGET),x86-geode)
GLUON_SITE_PACKAGES += \
    kmod-usb-hid
endif
