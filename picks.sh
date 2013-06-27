# symlinked from local_manifest repo
# Run from root of source tree

root=`pwd`
cd $root

# In order to use pstest must be in build environment
. build/envsetup.sh >/dev/null 2>&1

cd build
pstest 7717/2
cd $root

# ------------------------------#
# Device changes
# ------------------------------#

cd device/samsung/msm8960-common
pstest 9075/1
cd $root

cd device/samsung/qcom-common
pstest 9163/1
cd $root

# ------------------------------#
# Picks for all
# ------------------------------#

cd frameworks/base
pstest 5133/3
cd $root

cd hardware/libhardware
#git fetch http://review.cyanogenmod.org/CyanogenMod/android_hardware_libhardware refs/changes/83/44783/1 && git cherry-pick FETCH_HEAD
cd $root

cd packages/apps/ROMControl
pstest 9142/7
pstest 9132/4
cd $root

cd vendor/aokp
pstest 8943/1
cd $root

# Reinitialize build environment with pspush
. build/envsetup.sh >/dev/null 2>&1
