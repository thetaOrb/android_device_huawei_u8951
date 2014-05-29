#
# Copyright (C) 2014 The Android Open-Source Project
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

froot := \
	init.huawei.device.rc \
	fstab.huawei \
	tp/1191601.img \
        init.huawei.ril.sh

PRODUCT_COPY_FILES += $(foreach file,$(froot),\
        $(LOCAL_PATH)/$(file):root/$(file))

frecovery := \
	tp/1191601.img

PRODUCT_COPY_FILES += $(foreach file,$(frecovery),\
        $(LOCAL_PATH)/$(file):/recovery/root/$(file))
