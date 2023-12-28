#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/sdio_emmc/by-name/RECOVERY:8912896:78d14512fd50ffe1980a776c278839f742576fe5; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/sdio_emmc/by-name/KERNEL:7794688:f6b5f3cbc7132d56c5d2c46e2116fc8c44e071d4 EMMC:/dev/block/platform/sdio_emmc/by-name/RECOVERY 78d14512fd50ffe1980a776c278839f742576fe5 8912896 f6b5f3cbc7132d56c5d2c46e2116fc8c44e071d4:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
