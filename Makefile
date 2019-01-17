include $(TOPDIR)/rules.mk

PKG_NAME:=ckipver
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/Hill-98/C-ckipver.git
PKG_SOURCE_VERSION:=e48fbf86ae98e418eeab337197411805b8b9ab8a
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_SOURCE_VERSION)
PKG_SOURCE:=$(PKG_SOURCE_SUBDIR).tar.gz

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_SOURCE_SUBDIR)

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=Simple detection of IP address version program
	URL:=https://github.com/Hill-98/C-ckipver
endef

define Package/$(PKG_NAME)/description
Simple detection of IP address version program
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/src/ckipver $(1)/usr/bin
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
