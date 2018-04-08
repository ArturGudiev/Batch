@echo off

if "%1"=="ui" goto UI


start chrome https://dpa-wiki.lss.emc.com/pages/viewpage.action?spaceKey=DPA^&title=DPA+6.x+for+newbie
goto end 

:UI 
start https://dpa-wiki.lss.emc.com/display/DPA/Configure+JetBrains+IDEA+with+DPA+6.x+UI+Flex+project
:END