@echo off
set script=%1
set alias=%2


echo @echo off>> C:\Programming\Batch\Aliases\%2.bat
echo %1.bat %%*>> C:\Programming\Batch\Aliases\%2.bat

