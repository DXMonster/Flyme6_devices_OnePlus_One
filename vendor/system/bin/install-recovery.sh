#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:15841280:20d7355ab8226b9ed00c75ae1289b06f9c3bd7b7; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:11397120:7dfc759c3949ace701ca9fcea64a294a930ad6aa EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 20d7355ab8226b9ed00c75ae1289b06f9c3bd7b7 15841280 7dfc759c3949ace701ca9fcea64a294a930ad6aa:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
