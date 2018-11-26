if "%1"=="rename" goto rename
goto end

:rename
ec RENAME TABLE `group` TO `member`;
goto end
