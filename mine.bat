@echo off

if "%1"=="order" goto order
if "%1"=="timetable" goto timetable
goto end

:TIMETABLE
ch https://timetable.spbu.ru/MATH
goto end

:ORDER
start chrome https://my-shop.ru/my/orders/order_7643992
goto end

:END