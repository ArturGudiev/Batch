@echo off

if "%1"=="purchases" goto purchases
if "%1"=="p" goto purchases
ch "https://e5.onthehub.com/WebStore/ProductsByMajorVersionList.aspx?cmi_cs=1&cmi_mnuMain=f764a1c9-eb5e-e011-971f-0030487d8897&ws=20794e6d-8f09-e111-a703-f04da23e67f6&vsro=8"
goto end

:PURCHASES
ch https://e5.onthehub.com/WebStore/Account/YourAccount.aspx?ws=20794e6d-8f09-e111-a703-f04da23e67f6&vsro=8
goto end

:END