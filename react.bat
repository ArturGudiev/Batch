ch plural@echo off

if "%1"=="" goto EMPTY
if "%1"=="new" goto new
if "%1"=="docs" goto docs
if "%1"=="create" goto create
if "%1"=="debug" goto debug
goto end

:debug
ch https://github.com/jhen0409/react-native-debugger/blob/master/docs/debugger-integration.md
goto end

:create
ch https://github.com/devSchacht/articles/tree/master/melikhov-create-devschacht-app-part-1
goto end

:docs
ch https://facebook.github.io/react-native/docs/getting-started.html
goto end

:new
create-react-native-app devschacht
goto end

:EMPTY

goto end

:END
