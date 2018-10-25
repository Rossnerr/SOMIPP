@ECHO OFF
SET /A SIZE=1474560 - %~z1
ECHO F | XCOPY %1 image.img
FSUTIL FILE CREATENEW file.txt %SIZE%
TYPE file.txt >> image.img
DEL file.txt
