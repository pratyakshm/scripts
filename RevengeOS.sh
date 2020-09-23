repo init -u https://github.com/RevengeOS/android_manifest -b r11.0
repo sync -c --force-sync --no-tags --no-clone-bundle -j$(nproc --all) --optimized-fetch --prune
git clone https://github.com/RevengeOS-Devices/android_device_xiaomi_rosy device/xiaomi/rosy --branch r11.0 --single-branch --depth 1
git clone https://github.com/PratyakshM/android_kernel_xiaomi_rosy kernel/xiaomi/rosy --depth 1
git clone https://github.com/PratyakshM/android_vendor_xiaomi_rosy vendor/xiaomi/rosy --branch eleven --single-branch --depth 1 
source build/envsetup.sh
lunch revengeos_rosy-user
make bacon
