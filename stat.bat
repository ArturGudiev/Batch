@echo off
set resources=C:\Artur\University\Stat\Resources

if "%1"=="csc" goto csc
if "%1"=="stepic" goto stepic

if "%1"=="slide" goto slide
if "%1"=="sl" goto slide

if "%1"=="seminar" goto seminar
if "%1"=="sem" goto seminar
if "%1"=="se" goto seminar

if "%1"=="res" goto attachment

if "%1"=="intro" goto intro
if "%1"=="help" goto help
if "%1"=="coggle" goto coggle

if "%1"=="theory" goto theory
if "%1"=="th" goto theory

if "%1"=="design" goto design
if "%1"=="rfunc" goto rfunc

if "%1"=="distribution" goto distribution
if "%1"=="d" goto distribution

if "%1"=="disp" goto disp

if "%1"=="slack" goto slack
if "%1"=="drive" goto drive

if "%1"=="slack" goto slack
if "%1"=="error" goto error
if "%1"=="er" goto error

if "%1"=="maxlike" goto maxlike
if "%1"=="pval" goto pval

if "%1"=="wilcox" goto wilcox
if "%1"=="wil" goto wilcox
if "%1"=="pwil" goto pwilcox
if "%1"=="pwilcox" goto pwilcox
if "%1"=="kolmogorov" goto wilcox
if "%1"=="cap" goto cap
if "%1"=="ex" goto exam
if "%1"=="sal" goto salary
if "%1"=="pair" goto pair
goto end

:pair
n+ C:\Programming\R\Stat\src\exam\crabs.data
goto end

:salary
ch http://data.princeton.edu/wws509/datasets/#salary
goto end

:exam
ch https://compscicenter.ru/learning/assignments/43247/
goto end

:cap
ch https://compscicenter.ru/media/slides/math_stat_2014_spring/2014_03_28_math_stat_2014_spring_1.pdf
goto end

:pwilcox
start C:\Artur\University\Stat\Resources\pairedwilcox.png
goto end

:KOLMOGOROV
start C:\Artur\University\Stat\Resources\kolmogorov.png
goto end

:WILCOX
start C:\Artur\University\Stat\Resources\wilcox.png
goto end

:PVAL 

echo "if pval >= alpha => H0"
echo "if pval < alpha => H1"
goto end

:MAXLIKE
ch https://www.matburo.ru/ex_ms.php?p1=msmmp
goto end

:ERROR
start %resources%\error.jpg
goto end

:ATTACHMENT
start C:\Artur\University\Stat\Resources\%2.html
goto end

:SLACK
ch https://cscenter.slack.com/messages/C963BEG2U/convo/C963BEG2U-1520297103.000152/
goto end

:DRIVE
ch https://docs.google.com/document/d/1FcUMsangD3jnEr-388A1SYRKffiFQNAiIzQZEwhp1Es/edit
goto end

:DISP
ch "https://ru.wikipedia.org/wiki/%%D0%%94%%D0%%B8%%D1%%81%%D0%%BF%%D0%%B5%%D1%%80%%D1%%81%%D0%%B8%%D1%%8F_%%D1%%81%%D0%%BB%%D1%%83%%D1%%87%%D0%%B0%%D0%%B9%%D0%%BD%%D0%%BE%%D0%%B9_%%D0%%B2%%D0%%B5%%D0%%BB%%D0%%B8%%D1%%87%%D0%%B8%%D0%%BD%%D1%%8B"
goto end

:SLACK
ch https://cscenter.slack.com/messages/C963BEG2U/convo/C963BEG2U-1519119965.000619/
goto end

:DISTRIBUTION
	if "%2"=="exp" goto EXP
	if "%2"=="e" goto EXP
	if "%2"=="norm" goto NORM
	if "%2"=="n" goto NORM
	if "%2"=="log" goto LOG
	if "%2"=="l" goto LOG	
	if "%2"=="lognorm" goto LOGNORM	
	if "%2"=="ln" goto LOGNORM	
	if "%2"=="laplas" goto LAPLAS
	if "%2"=="lp" goto LAPLAS
	if "%2"=="rayleigh" goto RAYLEIGH
	if "%2"=="rl" goto RAYLEiGH
	
	goto end
	
	:RAYLEIGH
	ch "https://ru.wikipedia.org/wiki/%%D0%%A0%%D0%%B0%%D1%%81%%D0%%BF%%D1%%80%%D0%%B5%%D0%%B4%%D0%%B5%%D0%%BB%%D0%%B5%%D0%%BD%%D0%%B8%%D0%%B5_%%D0%%A0%%D1%%8D%%D0%%BB%%D0%%B5%%D1%%8F"
	goto end
	
	:LAPLAS
	ch "https://ru.wikipedia.org/wiki/%%D0%%A0%%D0%%B0%%D1%%81%%D0%%BF%%D1%%80%%D0%%B5%%D0%%B4%%D0%%B5%%D0%%BB%%D0%%B5%%D0%%BD%%D0%%B8%%D0%%B5_%%D0%%9B%%D0%%B0%%D0%%BF%%D0%%BB%%D0%%B0%%D1%%81%%D0%%B0"
	goto end
	
	:LOGNORM
	ch "https://ru.wikipedia.org/wiki/%%D0%%9B%%D0%%BE%%D0%%B3%%D0%%BD%%D0%%BE%%D1%%80%%D0%%BC%%D0%%B0%%D0%%BB%%D1%%8C%%D0%%BD%%D0%%BE%%D0%%B5_%%D1%%80%%D0%%B0%%D1%%81%%D0%%BF%%D1%%80%%D0%%B5%%D0%%B4%%D0%%B5%%D0%%BB%%D0%%B5%%D0%%BD%%D0%%B8%%D0%%B5"
	goto end
	
	:LOG
	ch "https://ru.wikipedia.org/wiki/%%D0%%9B%%D0%%BE%%D0%%B3%%D0%%B8%%D1%%81%%D1%%82%%D0%%B8%%D1%%87%%D0%%B5%%D1%%81%%D0%%BA%%D0%%BE%%D0%%B5_%%D1%%80%%D0%%B0%%D1%%81%%D0%%BF%%D1%%80%%D0%%B5%%D0%%B4%%D0%%B5%%D0%%BB%%D0%%B5%%D0%%BD%%D0%%B8%%D0%%B5"
	goto end
	
	:NORM
	ch "https://ru.wikipedia.org/wiki/%%D0%%9D%%D0%%BE%%D1%%80%%D0%%BC%%D0%%B0%%D0%%BB%%D1%%8C%%D0%%BD%%D0%%BE%%D0%%B5_%%D1%%80%%D0%%B0%%D1%%81%%D0%%BF%%D1%%80%%D0%%B5%%D0%%B4%%D0%%B5%%D0%%BB%%D0%%B5%%D0%%BD%%D0%%B8%%D0%%B5"

	goto end
	
	:EXP
	ch "https://ru.wikipedia.org/wiki/%%D0%%AD%%D0%%BA%%D1%%81%%D0%%BF%%D0%%BE%%D0%%BD%%D0%%B5%%D0%%BD%%D1%%86%%D0%%B8%%D0%%B0%%D0%%BB%%D1%%8C%%D0%%BD%%D0%%BE%%D0%%B5_%%D1%%80%%D0%%B0%%D1%%81%%D0%%BF%%D1%%80%%D0%%B5%%D0%%B4%%D0%%B5%%D0%%BB%%D0%%B5%%D0%%BD%%D0%%B8%%D0%%B5"
	goto end
goto end

:RFUNC
ch https://stepik.org/lesson/39622/step/2?course=%D0%9C%D0%B0%D1%82%D0%B5%D0%BC%D0%B0%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B0%D1%8F-%D1%81%D1%82%D0%B0%D1%82%D0%B8%D1%81%D1%82%D0%B8%D0%BA%D0%B0-CSC&unit=18399
goto end

:DESIGN
ch https://stepik.org/lesson/39620/step/2?unit=18397
goto end

:THEORY
sa C:\Artur\University\Stat\theory\%2.pdf
goto end

:SEMINAR
sa C:\Artur\University\Stat\Resources\Sem%2.pdf
goto end

:INTRO 
ch https://cran.r-project.org/doc/manuals/R-intro.pdf
goto end

:COGGLE
ch https://coggle.it/diagram/WohEowWJuAAB-hMb/t/statistics
goto end

:CSC
ch "https://compscicenter.ru/courses/math-stat/2018-spring/classes/"
goto end

:STEPIC
ch "https://stepik.org/course/1939/continue"
goto end

:SLIDE
echo in slide
sa C:\Artur\University\Stat\%2.pdf
goto end

:HELP
start C:\Artur\University\Stat\util\help.html
goto end

:END
