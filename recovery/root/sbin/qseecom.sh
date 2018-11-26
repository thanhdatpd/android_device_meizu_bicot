#!/sbin/sh

while [ -z $cryptodone ]; do
    if [ -z "`mount | grep -w /system`" ]; then
        mount -o ro /system
    fi

    if [ -n "`blkid /dev/block/bootdevice/by-name/vendor | grep ext4`" ] && [ -z "`mount | grep -w /vendor`" ]; then
        if [ -L /vendor ]; then
            rm /vendor
        fi
        if [ ! -d /vendor ]; then
            mkdir /vendor
        fi
        mount -t ext4 -o ro /dev/block/bootdevice/by-name/vendor /vendor
    fi

    if [ -z "`ls -A /vendor`" ]; then
        if [ -n "`mount | grep -w /vendor`" ]; then
            umount /vendor
        fi
        if [ -d /vendor ]; then
            rmdir /vendor
        fi
        ln -sf /system/vendor /vendor
    fi

    if [ -z "`pidof qseecomd`" ]; then
        if [ -f /system/bin/qseecomd ]; then
            LD_LIBRARY_PATH='/system/lib64:/system/lib' PATH='/system/bin' /system/bin/qseecomd &
        else
            LD_LIBRARY_PATH='/vendor/lib64:/system/lib64:/vendor/lib:/system/lib' PATH='/vendor/bin:/system/bin' /vendor/bin/qseecomd &
        fi
    fi

    case `getprop ro.crypto.fs_crypto_blkdev` in
        /dev/block/dm-*) cryptodone=1 ;;
    esac
done

if [ -n $cryptodone ]; then
    killall qseecomd
fi

if [ -n "`mount | grep -w /system`" ]; then
    umount /system
fi

if [ -n "`mount | grep -w /vendor`" ]; then
    umount /vendor
fi
