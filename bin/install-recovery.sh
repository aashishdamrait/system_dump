#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:18307072:4e25590416a0150d7fe4ce73c394802bdae9ceea; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:14088192:fe7ec6dc57f48df2b95ee868d0a101c8fc32650a EMMC:/dev/block/bootdevice/by-name/recovery 4e25590416a0150d7fe4ce73c394802bdae9ceea 18307072 fe7ec6dc57f48df2b95ee868d0a101c8fc32650a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
