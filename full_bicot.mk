#
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
#
LOCAL_PATH := $(call my-dir)

#for twrp
PRODUCT_RELEASE_NAME := bicot
$(call inherit-product, build/target/product/embedded.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tissot device
$(call inherit-product, device/meizu/bicot/device.mk)


# Kernel
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/zImage:kernel


# Device identifier. This must come after all inclusions
TARGET_VENDOR := meizu
PRODUCT_DEVICE := bicot
PRODUCT_NAME := full_bicot
PRODUCT_BRAND := Meizu
PRODUCT_MODEL := M6 note
PRODUCT_MANUFACTURER := Meizu
