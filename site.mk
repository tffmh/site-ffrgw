#TODO: research on features and packages. Clean up used modules.
GLUON_SITE_PACKAGES := \
	gluon-alfred \
	gluon-respondd \
	gluon-autoupdater \
	gluon-mesh-batman-adv-15 \
	gluon-mesh-vpn-tunneldigger \
	gluon-radvd \
	gluon-status-page \
	gluon-config-mode-autoupdater \
	gluon-config-mode-contact-info \
	gluon-config-mode-geo-location-osm \
	gluon-config-mode-hostname \
	gluon-config-mode-mesh-vpn \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-web-admin \
	gluon-web-autoupdater \
	gluon-web-network \
	gluon-web-wifi-config \
	gluon-web-osm \
	haveged \
	iwinfo

# SSID Changer
GLUON_SITE_PACKAGES += \
	gluon-ssid-changer

#TODO: enable multidomain support
# Languages to include
GLUON_LANGS ?= en de

DEFAULT_GLUON_RELEASE := 0.10.0a4b2+$(shell date '+%Y%m%d')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Default priority for updates.
GLUON_PRIORITY ?= 0

# Region code required for some images; supported values: us eu
GLUON_REGION ?= eu

# Brach for Autoupdate
GLUON_BRANCH ?= experimental
