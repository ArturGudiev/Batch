@echo off

if "%1"=="exp" goto EXP
if "%1"=="e" goto EXP
if "%1"=="norm" goto NORM
if "%1"=="n" goto NORM
if "%1"=="log" goto LOG
if "%1"=="l" goto LOG	
if "%1"=="lognorm" goto LOGNORM	
if "%1"=="ln" goto LOGNORM	
if "%1"=="laplas" goto LAPLACE
if "%1"=="lp" goto LAPLACE
if "%1"=="rayleigh" goto RAYLEIGH
if "%1"=="rl" goto RAYLEiGH
if "%1"=="r" goto R
if "%1"=="ps" goto POISON
if "%1"=="uni" goto uniform
if "%1"=="uniform" goto uniform
if "%1"=="poison" goto poison
if "%1"=="pois" goto poison
if "%1"=="maxlike" goto maxlike
if "%1"=="student" goto student
if "%1"=="stu" goto student

goto end

:R
	if "%2"=="exp" 			cc rexp(100,rate=0.25)
	if "%2"=="e" 			cc rexp(100,rate=0.25)
	if "%2"=="norm" 		cc rnorm(100, mean = 4, sd = 4)
	if "%2"=="n" 			cc rnorm(100, mean = 4, sd = 4)
	if "%2"=="log" 			cc rlogis(100, location = 0, scale = 1)
	if "%2"=="l"  			cc rlogis(100, location = 0, scale = 1)	
	if "%2"=="lognorm"  	cc rlnorm(100, meanlog = 0, sdlog = 1)
	if "%2"=="ln"  			cc rlnorm(100, meanlog = 0, sdlog = 1)	
	if "%2"=="laplace"  	cc rlaplace(100, m=0, s=1)
	if "%2"=="lp"  			cc rlaplace(100, m=0, s=1)
	if "%2"=="rayleigh"  	cc rrayleigh(100, 5)
	if "%2"=="rl"  			cc rrayleigh(100, 5)
	if "%2"=="uni"  		cc runif(100,0,8)
	if "%2"=="uniform"  	cc runif(100,0,8)
	if "%2"=="ps"  			cc rpois(n, 0.33)
	if "%2"=="poison" 		cc rpois(n, 0.5)
	goto end

:STUDENT
ch http://www.machinelearning.ru/wiki/index.php?title=%%D0%%A0%%D0%%B0%%D1%%81%%D0%%BF%%D1%%80%%D0%%B5%%D0%%B4%%D0%%B5%%D0%%BB%%D0%%B5%%D0%%BD%%D0%%B8%%D0%%B5_%%D0%%A1%%D1%%82%%D1%%8C%%D1%%8E%%D0%%B4%%D0%%B5%%D0%%BD%%D1%%82%%D0%%B0 
goto end 

:MAXLIKE 
ch https://www.matburo.ru/ex_ms.php?p1=msmmp
goto end 
	
:POISON
echo Poisson distribution
ch "https://ru.wikipedia.org/wiki/%%D0%%A0%%D0%%B0%%D1%%81%%D0%%BF%%D1%%80%%D0%%B5%%D0%%B4%%D0%%B5%%D0%%BB%%D0%%B5%%D0%%BD%%D0%%B8%%D0%%B5_%%D0%%9F%%D1%%83%%D0%%B0%%D1%%81%%D1%%81%%D0%%BE%%D0%%BD%%D0%%B0"
goto end
	
:UNIFORM
ch "https://ru.wikipedia.org/wiki/%%D0%%9D%%D0%%B5%%D0%%BF%%D1%%80%%D0%%B5%%D1%%80%%D1%%8B%%D0%%B2%%D0%%BD%%D0%%BE%%D0%%B5_%%D1%%80%%D0%%B0%%D0%%B2%%D0%%BD%%D0%%BE%%D0%%BC%%D0%%B5%%D1%%80%%D0%%BD%%D0%%BE%%D0%%B5_%%D1%%80%%D0%%B0%%D1%%81%%D0%%BF%%D1%%80%%D0%%B5%%D0%%B4%%D0%%B5%%D0%%BB%%D0%%B5%%D0%%BD%%D0%%B8%%D0%%B5"
goto end
	
:POISON
ch "https://ru.wikipedia.org/wiki/%%D0%%A0%%D0%%B0%%D1%%81%%D0%%BF%%D1%%80%%D0%%B5%%D0%%B4%%D0%%B5%%D0%%BB%%D0%%B5%%D0%%BD%%D0%%B8%%D0%%B5_%%D0%%9F%%D1%%83%%D0%%B0%%D1%%81%%D1%%81%%D0%%BE%%D0%%BD%%D0%%B0" 
goto end
	
:RAYLEIGH
ch "https://ru.wikipedia.org/wiki/%%D0%%A0%%D0%%B0%%D1%%81%%D0%%BF%%D1%%80%%D0%%B5%%D0%%B4%%D0%%B5%%D0%%BB%%D0%%B5%%D0%%BD%%D0%%B8%%D0%%B5_%%D0%%A0%%D1%%8D%%D0%%BB%%D0%%B5%%D1%%8F"
goto end

:LAPLACE
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
:END