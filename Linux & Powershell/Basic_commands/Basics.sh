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
  


