#!/sbin/sh
while [ "$(getprop ro.crypto.fs_crypto_blkdev)" != "/dev/block/dm-0" ]; do
if [ ! -d /system/etc ]; then #mount system if not already mounted
    mount /system -o ro
fi
    if [  `blkid /dev/block/bootdevice/by-name/vendor | grep -c ext4` -lt 1  ]; then
        if [ ! -L /vendor ]; then
                  ln -s /system/vendor /vendor #if no vendor partition symlink it
        fi
    else
        if [ ! -d /vendor ]; then # create a /vendor directory to mount onto if not there
            if [ -L /vendor ]; then #if it exists and isnt a directory get it out of the way
                rm /vendor
            fi
                mkdir /vendor
        fi
            mount /dev/block/bootdevice/by-name/vendor /vendor -t ext4 -o ro
        fi
        if [ -f /system/bin/qseecomd ]; then
#                start sys_qseecomd
            if [ -z "$(pidof qseecomd)" ]; then #make sure it isnt already running
               LD_LIBRARY_PATH='/system/lib64:/system/lib' PATH='/system/bin' /system/bin/qseecomd &
            fi
        else
#                start ven_qseecomd
            if [ -z "$(pidof qseecomd)" ]; then
               LD_LIBRARY_PATH='/vendor/lib64:/system/lib64:/vendor/lib:/system/lib' PATH='/vendor/bin:/system/bin' /vendor/bin/qseecomd &
            fi
        fi
while [ ! -d /data/media ]; do
sleep 0.02
if [ ! -d /system/etc ]; then #sometimes /system gets unmounted
     mount /system -o ro
fi
done
if [ ! -z "$(pidof qseecomd)" ]; then
     killall qseecomd
fi
if [ -d /system/etc ]; then
umount /system
fi
exec /sbin/sh /qseecom.sh
done
