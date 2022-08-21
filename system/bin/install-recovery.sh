#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/sdio_emmc/by-name/RECOVERY:15126528:f70747115326d0a654e389bda1d7b7de505f79b4; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/sdio_emmc/by-name/KERNEL:14137344:25d6b1740f9a13568d0d1039832e21b159710ddb EMMC:/dev/block/platform/sdio_emmc/by-name/RECOVERY f70747115326d0a654e389bda1d7b7de505f79b4 15126528 25d6b1740f9a13568d0d1039832e21b159710ddb:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
