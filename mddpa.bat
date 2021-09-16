if "%1"=="ip2" goto ip2
goto end

:ip2
ec https://10.77.4.84:4200/
goto end
