@echo off

if "%1"=="" goto EMPTY
if "%1"=="glossary" goto glossary
if "%1"=="glo" goto glossary
if "%1"=="sh" goto shapes
if "%1"=="shapes" goto shapes
if "%1"=="co" goto commands
if "%1"=="commands" goto commands
if "%1"=="languages" goto languages
goto end

:languages
ch https://confluence.jetbrains.com/display/MPS/MPS+Languages+Repository
goto end

:commands
ch https://confluence.jetbrains.com/display/MPSD20182/Commanding+the+editor
goto end

:shapes
ch https://confluence.jetbrains.com/display/MPSD20182/Shapes+-+an+introductory+MPS+tutorial
goto end

:glossary
ch https://confluence.jetbrains.com/display/MPSD20182/Glossary
goto end

:EMPTY

goto end

:END
