@echo off
setlocal EnableDelayedExpansion
set LF=^


rem ** The two empty lines are necessary
set "content="

for /f "delims=" %%x in (file.txt) do (
  set "content=!content!%%x!LF!"
)
echo(!content!

endlocal
