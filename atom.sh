mkdir atom
cd atom
repo init -u https://github.com/AtomOrganization/manifest -b ten --depth=1 --groups=all,-notdefault,-device,-darwin,-x86,-mips
repo sync -c -j4 --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync
git clone --depth=1 https://github.com/pratyakshm/android_device_rosy --branch ten --single-branch device/xiaomi/rosy
git clone --depth=1 https://github.com/pratyakshm/android_vendor_rosy vendor/xiaomi
git clone --depth=1 https://github.com/pratyakshm/android_kernel_rosy kernel/xiaomi/rosy
. build/envsetup.sh && lunch aosp_rosy-userdebug && mka bacon
