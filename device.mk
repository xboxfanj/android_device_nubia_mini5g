# Copyright (C) 2020 Paranoid Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

PRODUCT_PACKAGES += \
    otapreopt_script

# APEX
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom \
    $(LOCAL_PATH)/init.recovery.qcom.rc:recovery/root/init.recovery.qcom.rc

# Namespaces
PRODUCT_SOONG_NAMESPACES += \
    device/nubia/mini5g

# Platform
TARGET_BOARD_PLATFORM := msmnile

# QTI Components
TARGET_COMMON_QTI_COMPONENTS := \
    bt

# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 29
