#!/bin/bash

DATADIR=/nightscout_data
EBS_DEV=/dev/nvme1n1

checkMongoMount () {
    if findmnt --target /data > /dev/null; then
        echo "Mongo data directory mounted..."
    # elif  blkid -o value -s TYPE $EBS_DEV 
    #     echo "Checking for unmounted mongo volume..."
    else
        echo "Mongo data is not mounted. Configuring..."
        echo "Partitioning disk..."
        sudo parted -s -a optimal $EBS_DEV mklabel gpt
        sudo parted -s -a optimal $EBS_DEV mkpart primary ext4 0% 100%
        echo "Formatting disk..."
        sudo mkfs.ext4 /dev/nvme1n1p1
        echo "Adding disk to the filesystem table..."
        OUTPUT="$(sudo blkid -s UUID -o value ${EBS_DEV}p1)"
        echo "UUID=$OUTPUT    $DATADIR  ext4    defaults    0    1" | sudo tee -a /etc/fstab
        echo "Configuring mount directory..."
        sudo mkdir -p $DATADIR
        echo "Mounting Mongo data directory..."
        sudo mount $DATADIR
        echo "Checking mount..."
        #checkMongoMount
    fi
}

checkMongoMount
exit