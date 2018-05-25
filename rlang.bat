@echo off

if "%1"=="lang" goto lang
if "%1"=="hist" goto hist
if "%1"=="fq" goto fq
if "%1"=="fisherq" goto fq
if "%1"=="fisherq" goto fq
if "%1"=="standq" goto standq
if "%1"=="chisqq" goto chisqq
if "%1"=="kolq" goto kolq

if "%1"=="normq" goto normq

if "%1"=="studentq" goto studentq
if "%1"=="studentdf" goto studentdf


if "%1"=="hotkeys" goto hotkeys
if "%1"=="vector" goto vector
if "%1"=="lib" goto lib
if "%1"=="seed" goto seed
if "%1"=="plot" goto plot
if "%1"=="seq" goto seq

if "%1"=="strnum" goto strnum
if "%1"=="graphic" goto graphic
if "%1"=="comma" goto comma
if "%1"=="kolmogorov" goto kolmogorov
if "%1"=="kol" goto kolmogorov
if "%1"=="matrix" goto matrix
if "%1"=="last" goto last
if "%1"=="table" goto table
if "%1"=="which" goto which
goto end

:which
echo which(Y[i] == Z) 
cc which(Y[i] == Z)
goto end

:TABLE
echo t = read.table('data.txt', header=T, sep='\t')
cc t = read.table('data.txt', header=T, sep='\t')
goto end

:LAST
echo tail(vector, n=1)
cc tail(vector, n=1)
goto end

:MATRIX
echo matr2=matrix(rep(0,6),ncol=2,nrow=3)
cc matr2=matrix(rep(0,6),ncol=2,nrow=3)
goto end

:KOLMOGOROV
echo H0: F = N(mu=2, sd=2)
echo sample = rexp(1/2)
echo ks.test(sample,"pnorm",2,2)$statistic
cc ks.test(sample,"pnorm",2,2)$statistic
goto end

:comma 
cc print(paste(sample, collapse=", "))
goto end

:graphic
echo cc plot(my_Function(1:1000), type='l')
cc plot(my_Function(1:1000), type='l')
goto end

:STRNUM
cc as.numeric(unlist(strsplit(..., split=' ')))
goto end

:STUDENTDF
cc pt(1.2, df=)
goto end

:SEQ
cc seq(1,10,0.1)
goto end

:PLOT
cc plot(eq(1:1000), type='l')
goto end

:SEED
cc set.seed(20)
goto end

:LIB
cc source("../lib/lib.R")
goto end

:CHISQQ
cc qchisq(.95, df=)
goto end

:VECTOR
cc mean_fromp2 = rep(NA,1000)
goto end

:HIST
cc hist(estim_vector,freq=F,col=rgb(0,0,1,1/4), main=sprintf('N = %%s', n))
goto end

:HOTKEYS
ch https://support.rstudio.com/hc/en-us/articles/200711853-Keyboard-Shortcuts
goto end

:STUDENTQ
cc qt(c(.025, .975), df=5)
goto end

:NORMQ
cc qnorm(0.025, 0, 1)
goto end

:STANDQ
echo in standq
cc qnorm(0.025, 0, 1)
goto end

:FQ
cc qf(.95, df1=5, df2=2) 
goto end

:lang
cc Sys.setenv(LANG = 'en')
goto end

:END
