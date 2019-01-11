@echo off

if "%1"=="" goto EMPTY
if "%1"=="psyling" goto psyling
goto end

:psyling
ch https://courses.openedu.ru/courses/course-v1:spbu+PSYLING+self_paced_2018/courseware/a61ec90889e5462aa828df5cff92da85/755406d821c14ea8820fb1b9535c8594/
goto end

:EMPTY

goto end

:END
