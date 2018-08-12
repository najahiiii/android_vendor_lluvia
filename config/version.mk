# Copyright (C) 2018 The LLuvia Open source Project
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

# Versioning System
PRODUCT_VERSION_MAJOR = 8.1.0
PRODUCT_VERSION_MINOR = Drizzle
PRODUCT_VERSION_MAINTENANCE = 2.0

DATE := $(shell date +%Y%m%d)

ifdef LLUVIA_BUILD_EXTRA
    LLUVIA_POSTFIX := -$(LLUVIA_BUILD_EXTRA)
endif

ifndef LLUVIA_BUILD_TYPE
    LLUVIA_BUILD_TYPE := ManMade
endif

ifeq ($(LLUVIA_BUILD_TYPE), Official)
    LLUVIA_BUILD_TYPE := NatureMade
endif

LLUVIA_BUILD_VERSION := $(PRODUCT_VERSION_MINOR)-$(PRODUCT_VERSION_MAINTENANCE)
LLUVIA_VERSION := $(LLUVIA_BUILD_VERSION)-$(LLUVIA_BUILD_TYPE)-$(LLUVIA_BUILD)-$(DATE)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.lluvia.build.version=$(LLUVIA_BUILD_VERSION) \
  ro.lluvia.build.date=$(DATE) \
  ro.lluvia.buildtype=$(LLUVIA_BUILD_TYPE) \
  ro.lluvia.version=$(LLUVIA_VERSION) \
  ro.lluvia.device=$(LLUVIA_BUILD) \
  ro.modversion=$(LLUVIA_VERSION)
