SET "fname=a.b.c.d.e.f.g"

FOR %%a IN (%fname%) DO FOR %%b IN (%%~na) DO ECHO %%~xb%%~xa