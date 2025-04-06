======================File System Navigation Commands=============================
Cd /root 
--It stands for Change Directory it helps to go to given target directory.
pwd
--It stands for Present Working Directory it helps to show the path of the directory we are present in.
ls
---It stands for listing , it helps to show the files / diectories list present.
==========================================Changing Password=======================
passwd teja009
it ask old password
enter new password
it reconfirm new password
============Creating files & directories==========================================
Creating files
 1) touch
 ----It creares a new file either single / multiple in a go
 2) vi
 --It creates a new file by opening a  vi editor 
 3) cp 1  2
 --It copies the selected file and rename it with selected name Newly created)
  cp -R fax dex
  --It copies directories when we give -R option
 ----------------------------------------------------------------------------------
 Creating Directories
 1) mkdir
--Used for creating directory
 =============================Finding Files and Directories==========================
 1)find / -name tej.txt
--Used to find the particular file globally on all file directories present in linux but its shows only file visibilty not entire path.
2) locate tej.txt
--It will show full path of the searching file but updatedb should be up to date timely
 =============================SoftLinks & Hardlinks , Inode============================
 =============================Permissions==============================================
 1)chmod
 It is used to change the permissions levels for a file or directory
 Syntax - chmod 600 filename
 ===============================Ownership===============================================
 1)chown and chgrp
•chown changes the ownership of a file
•chgrp changes the group ownership of a file
===================================Input & Output Redirects==============================
The output of a command can be routed to a file using > symbol
•E.g. ls l > listings
pwd > findpath
•If using the same file for additional output or to append to the same file then use >>
•E.g. ls la >> listings
       echo “Hello World” >>
       findpath


===========LVM==============
Physical hardisk is must attached       
       fdisk -l
       df -h
       fdisk -l |more
Step 1 fdisk - To create a new Partitons
       fdisk -l 
       fdisk /dev/sdb
       n -> to create new partiton
       p -> Primary 
       enter
       enter
       enter
       To change Linux to Linux LVM via Hex code
       t
       L
       8e----Hex code
       w -- TO write about config
--------------------------------------------------
Step 2 To create Physical volume  
       fdisk -l
       pvcreate /dev/sdb1
       pvdisplay
--------------------------------------------------
Step 3 To create volume group ==vgtejas 
       vgcreate vgtejas /dev/sdb1
       vgdisplay
       vgdisplay vgtejas
--------------------------------------------------
Step 4 To create 2 Logical volumes --- TejaApp1 , TejaApp2
       lvcreate -L 1000M -n TejApp1-lv vgtejas
       lvdisplay
       lvcreate -L 1000M -n TejApp2-lv vgtejas
       lvdisplay
----------------------------------------------------
Step 5 Creating the filesystem to above Logical Volumes
       mkfs.ext4 /dev/vgtejas/TejApp2-lv
       mkfs.nfs /dev/vgtejas/TejApp1-lv
       Now we need to mount above filesystem to a particular dir
       mkdir /Tejasapp1
       mkdir /Tejasapp2
       mount /dev/vgtejas/TejApp2-lv /Tejasapp1
       mount /dev/vgtejas/TejApp1-lv /Tejasapp2
-----------------------------------------------------
Step 6 By doing above we have achieved LVM to verify use below cmd's
       df -Th
       mount -av 
       Above mount will be temporary so to make it permanent go to
       cat /etc/mtab
       mount -av       
       & copy the temporary mounting lines and copy in below file
       cat /etc/fstab & save it then mount will be permanent.
==============================================================
To Extend exiting disk using LVM
Step 1 - first add additional Physical Harddisk
Step 2 - Extending the existing disk
         fidisk -l
	 fdisk /dev/sdc
	 n
	 e --- Extended option
	 t
	 8e
         w
Step 3 - Creating Physical volume
         pvcretae /dev/sdc1
Step 4 - No need to create new Volume group we can use exiting Volume grp
         vgextend vgtejas /dev/sdc1
Step 5 - Extending Logical volume 
         lvextend -L +1000M /dev/vgtejas/TejApp2-lv
Step 6 - Making the new space available to file system
         resize2fs /dev/vgtejas/TejApp2-lv 2000M

 Hello team        


