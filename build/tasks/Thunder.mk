LLUVIA_TARGET_PACKAGE := $(PRODUCT_OUT)/LLUVIA-$(LLUVIA_VERSION).zip

.PHONY: otapackage Thunder
otapackage: $(INTERNAL_OTA_PACKAGE_TARGET)
Thunder: otapackage
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(LLUVIA_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(LLUVIA_TARGET_PACKAGE) > $(LLUVIA_TARGET_PACKAGE).md5sum
	
	@echo -e ${CL_BLU}""${CL_RST}
	@echo -e ${CL_BLU}" ██╗     ██╗     ██╗   ██╗██╗   ██╗██╗ █████╗  "${CL_RST}
	@echo -e ${CL_BLU}" ██║     ██║     ██║   ██║██║   ██║██║██╔══██╗ "${CL_RST}
	@echo -e ${CL_BLU}" ██║     ██║     ██║   ██║██║   ██║██║███████║ "${CL_RST}
	@echo -e ${CL_BLU}" ██║     ██║     ██║   ██║╚██╗ ██╔╝██║██╔══██║ "${CL_RST}
	@echo -e ${CL_BLU}" ███████╗███████╗╚██████╔╝ ╚████╔╝ ██║██║  ██║ "${CL_RST}
	@echo -e ${CL_BLU}" ╚══════╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝  ╚═╝ "${CL_RST}
	@echo -e ${CL_BLU}"            A Storm Has Broke Out              "${CL_RST}
	@echo -e ${CL_BLU}"              EXPERIENCETHEPOWER               "${CL_RST}
	@echo -e "Package complete: $(LLUVIA_TARGET_PACKAGE)"
