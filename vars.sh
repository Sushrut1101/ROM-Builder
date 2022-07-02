#!/bin/bash

# Manifest
export MANIFEST="https://github.com/Evolution-X/manifest"
export MANIFEST_BRANCH="snow"

# Device Info
export DEVICE="lavender" # Codename
export OEM="xiaomi"
export PLATFORM="sdm660" # eg: sm6250, mt6765 etc.

# Trees
export DT_LINK="https://github.com/OmarAlCoptan/device_xiaomi_lavender-decommonized"
export DCT_LINK="https://github.com/OmarAlCoptan/device_xiaomi_sdm660-common" # Device Common Tree, Leave Blank if None
export VT_LINK="https://github.com/OmarAlCoptan/vendor_xiaomi_lavender-decommonized"
export VCT_LINK="https://github.com/OmarAlCoptan/vendor_xiaomi_sdm660-common" # Vendor Common Tree, Leave Blank if None
export KT_LINK="https://github.com/OmarAlCoptan/android_kernel_xiaomi_lavender-LTO" # Kernel Tree, Leave Blank if Prebuilt

# Trees Path
export DT_PATH="device/$OEM/$DEVICE"
export DCT_PATH="device/$OEM/${PLATFORM}-common"
export VT_PATH="vendor/$OEM/$DEVICE"
export VCT_PATH="vendor/$OEM/${PLATFORM}-common"
export KT_PATH="kernel/$OEM/$DEVICE"

# Lunch Combos and Targets
export USE_BRUNCH_AS_TARGET=false # set it to "true" if you want to use brunch
export LUNCH_COMBO="lunch evolution_lavender-userdebug" # eg: "aosp_miatoll-userdebug", No need if USE_BRUNCH_AS_TARGET is set to true
export TARGET="mka evolution" # eg: "bacon", No need if USE_BRUNCH_AS_TARGET is set to true

# Output File (to upload)
export OUTPUT_FILE="evolution*.zip" # eg: "PixelExperience*.zip"

# Extra Command
export EXTRA_CMD=""

# Not Recommended to Change
export SYNC_PATH=$HOME/work
export USE_CCACHE=1
export CCACHE_EXEC=$(which ccache)
export CCACHE_DIR="${SYNC_PATH}/.ccache"
export CCACHE_SIZE=30G
export J_VAL=16 # for -jx, eg: "16"
