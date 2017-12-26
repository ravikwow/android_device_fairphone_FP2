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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from msm8974 device
$(call inherit-product, device/zte/msm8974/msm8974.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := lineage_msm8974
PRODUCT_DEVICE := msm8974
PRODUCT_MANUFACTURER := zte
PRODUCT_MODEL := ZTE Grand S II LTE

PRODUCT_GMS_CLIENTID_BASE := android-msm8974

PRODUCT_BRAND := zte
TARGET_VENDOR := zte
TARGET_VENDOR_PRODUCT_NAME := msm8974
TARGET_VENDOR_DEVICE_NAME := msm8974
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=msm8974 PRODUCT_NAME=msm8974

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=zte/msm8974/msm8974:6.0.1/msm8974-gms-17.09.3/msm8974-gms-17.09.3:user/release-keys
    PRIVATE_BUILD_DESC="msm8974-user no clue what to put here"
endif
