@echo off
if "%1"=="-e" goto exact_search
dir /b /s *%**
goto end 

:EXACT_SEARCH
dir /b /s %2
goto end 

:END