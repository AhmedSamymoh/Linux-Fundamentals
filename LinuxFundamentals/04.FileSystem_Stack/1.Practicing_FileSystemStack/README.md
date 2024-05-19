# Creating Partitions and Primary FileSystem:

- First we should know the name of SD Card (ex. /dev/sda) by using ``$ lsblk`` 

```bash
$ lsblk
sdc               8:32   1   3.7G  0 disk 
├─ sdc1           8:32   1   3.7G  0 disk 
```
> Acutally we got SD Card ``3.7`` Gbyte Here 

- Now We should ``umount`` **/sdc1**

So Simply We Can use ``$ umount /dev/sdc1``


- Lets figure out ``$ fdisk`` can Do

```shell
sami@linux:~/Desktop/SDCard$ sudo fdisk /dev/sdc 

Welcome to fdisk (util-linux 2.34).
Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.


Command (m for help):
```
> m for help is a good option you know : )

 ### For Creating **Primary FileSystem**:
 
 ```shell
 sami@linux:~$ sudo fdisk /dev/sdc

Welcome to fdisk (util-linux 2.34).
Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.

Command (m for help): n
 ```
  ```shell
Partition type
   p   primary (0 primary, 0 extended, 4 free)
   e   extended (container for logical partitions)
Select (default p): p
```
```bash
Partition number (1-4, default 1): 1
```
```bash
First sector (2048-7821311, default 2048): 2048
```
#### For Creating ``n`` Gbyte we could use this formula:

<img src="../assests/11.png" width="400"/>

- as Sector size is **512 Byte** , for example lets try to make it **1 Gb** :

```bash
Last sector, +/-sectors or +/-size{K,M,G,T,P} (2048-7821311, default 7821311): 2099200
```

and yes 
```bash

Created a new partition 1 of type 'Linux' and of size 1 GiB. #<<<<

Command (m for help): w
The partition table has been altered.
Calling ioctl() to re-read partition table.
Syncing disks.
sami@linux:~$ 
```