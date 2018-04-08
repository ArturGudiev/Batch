@echo off

if "%1"=="calendar" goto calendar
if "%1"=="cal" goto calendar

if "%1"=="main" goto main 
goto end

:MAIN
start chrome "https://www.office.com/?auth=2"
goto end

:CALENDAR
echo open calendar
REM start chrome "https://studentspburu-my.sharepoint.com/:x:/r/personal/st024173_student_spbu_ru/_layouts/15/WopiFrame.aspx?sourcedoc=%7B16003F53-6AD5-4E1A-B6C4-B0781D5ACBD9%7D&file=calendar.xlsx&action=default"
REM start chrome "https://studentspburu-my.sharepoint.com/:x:/r/personal/st024173_student_spbu_ru/_layouts/15/WopiFrame.aspx?sourcedoc=%7B16003F53-6AD5-4E1A-B6C4-B0781D5ACBD9%7D&file=calendar.xlsx&action=default"
start chrome "https://studentspburu-my.sharepoint.com/personal/st024173_student_spbu_ru/_layouts/15/WopiFrame.aspx?sourcedoc=B16003F53-6AD5-4E1A-B6C4-B0781D5ACBD9D&file=calendar.xlsx&action=default"
start chrome "https://studentspburu-my.sharepoint.com/:x:/r/personal/st024173_student_spbu_ru/_layouts/15/WopiFrame.aspx?sourcedoc=%7B16003F53-6AD5-4E1A-B6C4-B0781D5ACBD9%7D&file=calendar.xlsx&action=default"
goto end

:END