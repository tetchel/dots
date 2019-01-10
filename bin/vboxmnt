#/usr/bin/env bash

if [ "$#" -ne 2 ]; then
    echo 'Usage: vboxmnt.sh $shareName $dirToMountTo' 
    exit
fi

if grep -qs $2 /proc/mounts; then
    echo "Something is already mounted at $2"
    exit
fi

mount -t vboxsf $1 $2

MOUNT_RETVAL=$?
if [ $MOUNT_RETVAL -eq 0  ]; then
    echo "$1 successfully mounted to $2"
else
    echo "Mount returned $MOUNT_RETVAL, see above for error message."
fi
