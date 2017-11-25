#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:19607552:c66922383c44f69b36e6a24f21c531dd0e972d24; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:14903296:618a492765e3835dafea2cfc06973f83d18afbf0 EMMC:/dev/block/bootdevice/by-name/recovery c66922383c44f69b36e6a24f21c531dd0e972d24 19607552 618a492765e3835dafea2cfc06973f83d18afbf0:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
