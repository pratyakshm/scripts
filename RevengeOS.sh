repo init -u https://github.com/RevengeOS/android_manifest -b r10.0
repo sync -c --force-sync --no-tags --no-clone-bundle -j$(nproc --all) --optimized-fetch --prune
git clone https://github.com/RevengeOS-Devices/device_xiaomi_rosy device/xiaomi/rosy
git clone https://github.com/PratyakshM/kernel_xiaomi_rosy kernel/xiaomi/rosy
git clone https://github.com/PratyakshM/vendor_xiaomi_rosy vendor/xiaomi/rosy
source build/envsetup.sh
lunch revengeos_rosy-user
make bacon
