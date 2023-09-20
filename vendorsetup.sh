#! /bin/bash

# Paths
dt="device/xiaomi/mojito"
vt="vendor/xiaomi/mojito"
kt="kernel/xiaomi/mojito"
clang="prebuilts/clang/host/linux-x86/clang-9342159"

# Clone device dependecies
clone(){
	git clone https://gitlab.com/spiceos/android_prebuilts_clang_host_linux-x86_clang-9597734 --depth=1 $clang

	if [ "depth" -eq 69 ]
	then
		git clone https://github.com/TejasKamat/vendor_xiaomi_mojito $vt
		git clone https://github.com/TejasKamat/kernel_xiaomi_mojito $kt
	else
		git clone https://github.com/TejasKamat/vendor_xiaomi_mojito --depth=1 $vt
		git clone https://github.com/TejasKamat/kernel_xiaomi_mojito --depth=1 $kt
	fi
}

# Some checks
if [ ! -d $vt ]
then
	rm -rf hardware/xiaomi/megvii
	clone
fi

