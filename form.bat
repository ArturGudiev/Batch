REM cc form "hello \sum\nolimits_{i=1}^^{100n} a_i\cdot x_i^2"

if "%1"=="ex" goto example

@echo off
@call set lastdir=%cd%
@call cd C:\Artur\mine\TEX\
@call d C:\Artur\mine\TEX\formula.pdf
@call pdflatex "\def\formula{%*}\input{formula.tex}" > nul
@call start C:\Artur\mine\TEX\formula.pdf
@call cd %lastdir%
goto end

:example
 echo in example

@call set lastdir=%cd%
@call cd C:\Artur\mine\TEX\
@call d C:\Artur\mine\TEX\formula.pdf
@call pdflatex "\def\formula{\text{\begin{multiline}AAAA if there is something spiecial \\ the formaly view will beAAAA if there is something spiecial \\ the formaly view will beAAAA if there is something spiecial \\ the formaly view will be\end{multiline}} \sum\nolimits_{i=1}^^{100n} a_i\cdot x_i^2}\input{formula.tex}" > nul
@call start C:\Artur\mine\TEX\formula.pdf
@call cd %lastdir%
goto end 

:END