@echo off

if "%1"=="m" goto message
goto end

:message
echo The user 'duser' has no permission to 'getChildren' the 'GenericNodeResource' service
goto end

:END
