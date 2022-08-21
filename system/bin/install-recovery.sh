#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/sdio_emmc/by-name/RECOVERY:15126528:ea37f49f00c954c3d63019d14571b4271078065e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/sdio_emmc/by-name/KERNEL:14137344:9b0eae9c66fe39e1bc1b1f6edc881438fa00b439 EMMC:/dev/block/platform/sdio_emmc/by-name/RECOVERY ea37f49f00c954c3d63019d14571b4271078065e 15126528 9b0eae9c66fe39e1bc1b1f6edc881438fa00b439:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
