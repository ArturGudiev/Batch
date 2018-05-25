@echo off

if "%1"=="" goto EMPTY
if "%1"=="mult" goto mult
if "%1"=="prec" goto prec
if "%1"=="trans" goto transpose
goto end

:transpose
cc L = linalg.cholesky(A)
goto end

:prec
echo np.set_printoptions(suppress=True)
cc np.set_printoptions(precision=3)
goto end

:mult
echo np.dot(a,b) && cc np.dat(a,b)
goto end

:EMPTY

goto end

:END
