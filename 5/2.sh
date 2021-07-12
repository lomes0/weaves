lsblk
df
blkid
mkfs
vgs
resize2fs
xfs_growfs
lvcreate
lgcreate
vpcreate

lsblk
df
blkid
mkfs
vgs
resize2fs
xfs_growfs
lvcreate
lgcreate
vpcreate

disk

partition

physical volume

volume group

logical volume


# create partition
fdisk /device


# enter fdisk tool on device
fdisk /device

# create partition table - g
# create partition - n

###
# Why do we need phsical volume?
# Where does a physical volume resides?
# You can create a pv on a partition or on a whole disk
###
# create physical volume on the partition
pvcreate /dev/xvdb

# display info about pv
pvdisplay

# display info about disk
fdsik -l

####
What is type=part /dev/xvdb1?
###

# create volume group with the pv
sudo vgcreate vg00 /dev/xvdb1

sudo lvcreate -n lv00 20M vg00

# list logical volumes
lvs

# extend size
lvextend -L+20M /dev/vg00/lv00

# create file system
sudo mkfs /dev/mapper/vg-lv00

