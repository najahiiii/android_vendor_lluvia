# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# -----------------------------------------------------------------
# PixysOS OTA update package

ifneq ($(BUILD_WITH_COLORS),0)
    include $(TOP_DIR)vendor/lluvia/build/core/colors.mk
endif

LLUVIA_TARGET_PACKAGE := $(PRODUCT_OUT)/$(LLUVIA_VERSION).zip

.PHONY: bacon rain
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(LLUVIA_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(LLUVIA_TARGET_PACKAGE) > $(LLUVIA_TARGET_PACKAGE).md5sum
	@echo -e ${CL_CYN}"                                                                                                                                                        "${CL_CYN}
	@echo -e ${CL_CYN}"                                                                                                                                                        "${CL_CYN}
	@echo -e ${CL_CYN}"LLLLLLLLLLL             LLLLLLLLLLL                                                        iiii                        OOOOOOOOO        SSSSSSSSSSSSSSS "${CL_CYN}
	@echo -e ${CL_CYN}"L:::::::::L             L:::::::::L                                                       i::::i                     OO:::::::::OO    SS:::::::::::::::S"${CL_CYN}
	@echo -e ${CL_CYN}"L:::::::::L             L:::::::::L                                                        iiii                    OO:::::::::::::OO S:::::SSSSSS::::::S"${CL_CYN}
	@echo -e ${CL_CYN}"LL:::::::LL             LL:::::::LL                                                                               O:::::::OOO:::::::OS:::::S     SSSSSSS"${CL_CYN}
	@echo -e ${CL_CYN}"  L:::::L                 L:::::L               uuuuuu    uuuuuuvvvvvvv           vvvvvvviiiiiii   aaaaaaaaaaaaa  O::::::O   O::::::OS:::::S            "${CL_CYN}
	@echo -e ${CL_CYN}"  L:::::L                 L:::::L               u::::u    u::::u v:::::v         v:::::v i:::::i   a::::::::::::a O:::::O     O:::::OS:::::S            "${CL_CYN}
	@echo -e ${CL_CYN}"  L:::::L                 L:::::L               u::::u    u::::u  v:::::v       v:::::v   i::::i   aaaaaaaaa:::::aO:::::O     O:::::O S::::SSSS         "${CL_CYN}
	@echo -e ${CL_CYN}"  L:::::L                 L:::::L               u::::u    u::::u   v:::::v     v:::::v    i::::i            a::::aO:::::O     O:::::O  SS::::::SSSSS    "${CL_CYN}
	@echo -e ${CL_CYN}"  L:::::L                 L:::::L               u::::u    u::::u    v:::::v   v:::::v     i::::i     aaaaaaa:::::aO:::::O     O:::::O    SSS::::::::SS  "${CL_CYN}
	@echo -e ${CL_CYN}"  L:::::L                 L:::::L               u::::u    u::::u     v:::::v v:::::v      i::::i   aa::::::::::::aO:::::O     O:::::O       SSSSSS::::S "${CL_CYN}
	@echo -e ${CL_CYN}"  L:::::L                 L:::::L               u::::u    u::::u      v:::::v:::::v       i::::i  a::::aaaa::::::aO:::::O     O:::::O            S:::::S"${CL_CYN}
	@echo -e ${CL_CYN}"  L:::::L         LLLLLL  L:::::L         LLLLLLu:::::uuuu:::::u       v:::::::::v        i::::i a::::a    a:::::aO::::::O   O::::::O            S:::::S"${CL_CYN}
	@echo -e ${CL_CYN}"LL:::::::LLLLLLLLL:::::LLL:::::::LLLLLLLLL:::::Lu:::::::::::::::uu      v:::::::v        i::::::ia::::a    a:::::aO:::::::OOO:::::::OSSSSSSS     S:::::S"${CL_CYN}
	@echo -e ${CL_CYN}"L::::::::::::::::::::::LL::::::::::::::::::::::L u:::::::::::::::u       v:::::v         i::::::ia:::::aaaa::::::a OO:::::::::::::OO S::::::SSSSSS:::::S"${CL_CYN}
	@echo -e ${CL_CYN}"L::::::::::::::::::::::LL::::::::::::::::::::::L  uu::::::::uu:::u        v:::v          i::::::i a::::::::::aa:::a  OO:::::::::OO   S:::::::::::::::SS "${CL_CYN}
	@echo -e ${CL_CYN}"LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL    uuuuuuuu  uuuu         vvv           iiiiiiii  aaaaaaaaaa  aaaa    OOOOOOOOO      SSSSSSSSSSSSSSS   "${CL_CYN}
	@echo -e ${CL_RED}"                                                                                                                                                        "${CL_RED}
	@echo -e ${CL_RED}"                                                      There had been a Storm! Enjoy the Nature                                                          "${CL_RED}
	@echo -e ${CL_RED}"$(LLUVIA_TARGET_PACKAGE)"${CL_RED}
rain: bacon
