@echo off
if "%1"=="l" goto LIFE
if "%1"=="u" goto UNIVERSITY
if "%1"=="w" goto WORK
if "%1"=="pm" goto PM
if "%1"=="--help" goto HELP
if "%1"=="fifa" goto fifa
goto end

:fifa
ch https://trello.com/b/HtfhwXgZ/spb-support-team
goto end

:HELP
echo. 
echo 	l
echo 	u
echo 	w
echo 	pm
goto end

:LIFE
start https://trello.com/b/Vr9Nq5qA/%D0%B6%D0%B8%D0%B7%D0%BD%D1%8C
goto end

:UNIVERSITY
start https://trello.com/b/aJxaQced/%D0%BE%D0%B1%D1%83%D1%87%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B2-%D1%83%D0%BD%D0%B8%D0%B2%D0%B5%D1%80%D1%81%D0%B8%D1%82%D0%B5%D1%82%D0%B5
goto end

:WORK
start https://trello.com/b/q1SsfrNe/work
goto end

:PM
start https://trello.com/b/SBuVLF2t/project-managment
goto end

:END
