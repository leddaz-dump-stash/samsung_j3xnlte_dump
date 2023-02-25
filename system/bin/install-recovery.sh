#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/sdio_emmc/by-name/RECOVERY:15118336:bc8dab42e2abea86a2662cc1ecffd6eed023d54f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/sdio_emmc/by-name/KERNEL:14129152:3757a43b64606fea4860700891d4b844d3a215d7 EMMC:/dev/block/platform/sdio_emmc/by-name/RECOVERY bc8dab42e2abea86a2662cc1ecffd6eed023d54f 15118336 3757a43b64606fea4860700891d4b844d3a215d7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
