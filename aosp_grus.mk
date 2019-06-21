#
# Copyright (C) 2018 The Lineage Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product-if-exists, vendor/xiaomi/MiuiCamera/grus.mk)

# Inherit from grus device
$(call inherit-product, device/xiaomi/grus/device.mk)

# Inherit some common Mokee stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

PRODUCT_NAME := aosp_grus
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := grus
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := MI 9 SE

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="grus" \
    PRODUCT_NAME="grus" \
    PRIVATE_BUILD_DESC="grus-user 9 PKQ1.181121.001 V10.3.1.0.PFBCNXM release-keys"

BUILD_FINGERPRINT="Xiaomi/grus/grus:9/PKQ1.181121.001/V10.3.1.0.PFBCNXM:user/release-keys"

TARGET_VENDOR := Xiaomi
