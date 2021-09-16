@echo off
if "%1"=="" goto EMPTY
if "%1"=="pol" goto pol
if "%1"=="defpol" goto defpol
if "%1"=="cal" goto calendar
if "%1"=="calendar" goto calendar
if "%1"=="self" goto self
if "%1"=="defself" goto defself
if "%1"=="idle" goto idle
if "%1"=="id" goto idle
if "%1"=="idtoday" goto idletoday
if "%1"=="idletoday" goto idletoday
if "%1"=="idledef" goto idledeferal
if "%1"=="idledeferal" goto idledeferal
if "%1"=="tasks" goto tasks
if "%1"=="tk" goto tasks
if "%1"=="ac" goto achievments
if "%1"=="achievments" goto achievments
if "%1"=="c" goto c
if "%1"=="commit" goto commit
goto end

:commit
    mpsql "commit;"
goto end

:c
mpsql commit;
goto end

:achievments
    if "%2"=="" goto ac_empty
    if "%2"=="i" goto ac_insert
    if "%2"=="d" goto ac_delete
    goto end 

    :ac_delete
        mpsql "DELETE FROM ACHIEVMENTS WHERE id=%3;"
    goto end 

    :ac_insert
        set description=%3
        set description=%description:~1,-1%
        mpsql "INSERT INTO ACHIEVMENTS (description, date, time) VALUES ('%description%', CURRENT_DATE, CURRENT_TIME);"
    goto end 

    :ac_empty
        mpsql "SELECT * FROM ACHIEVMENTS;"
    goto end 
goto end

:tasks
    if "%2"=="" goto EMPTY_TASKS
    if "%2"=="done" goto done 
    if "%2"=="d" goto done 
    if "%2"=="delete" goto tasks_delete 
    if "%2"=="del" goto tasks_delete 
    if "%2"=="all" goto tasks_all 
    if "%2"=="a" goto tasks_all 
    if "%2"=="i" goto tasks_insert  
    if "%2"=="iw" goto tasks_insert_work  
    if "%2"=="iu" goto tasks_insert_univ  
    if "%2"=="is" goto tasks_insert_self  
    if "%2"=="w" goto tasks_work  
    if "%2"=="s" goto tasks_self  
    if "%2"=="u" goto tasks_univ  
    goto EMPTY_TASKS
  
    :tasks_self
        mpsql "SELECT id, description, done, tags FROM TASKS where tags LIKE '%%' || 'self' || '%%' AND done=false order by id;"
    goto end 

    :tasks_work
        mpsql "SELECT id, description, done, tags FROM TASKS where tags LIKE '%%' || 'work' || '%%' AND done=false order by id;"
    goto end 

    :tasks_univ
        mpsql "SELECT id, description, done, tags FROM TASKS where tags LIKE '%%' || 'univ' || '%%' AND done=false order by id;"
    goto end 

    :tasks_delete
        mpsql "delete from tasks where id=%3;" 
    goto end 
    :tasks_insert
        FOR /F "tokens=* USEBACKQ" %%F IN (`delquotes %3`) DO (SET description=%%F)
        FOR /F "tokens=* USEBACKQ" %%F IN (`delquotes %4`) DO (SET tags=%%F)
        
      @call mpsql "insert into tasks (description, tags) values ('%description%', '%tags%');" > nul
      @call mpsql "select id, description, done, tags from tasks where done=false;"
    goto end 
    :tasks_insert_work
      FOR /F "tokens=* USEBACKQ" %%F IN (`delquotes %3`) DO (SET description=%%F)
        
      @call mpsql "insert into tasks (description, tags) values ('%description%', 'work');" 
      @call mpsql "select id, description, done, tags from tasks where done=false and tags LIKE '%%' || 'work' || '%%';"
    goto end 
    :tasks_insert_univ
      FOR /F "tokens=* USEBACKQ" %%F IN (`delquotes %3`) DO (SET description=%%F)
        
      @call mpsql "insert into tasks (description, tags) values ('%description%', 'univ');" > nul
      @call mpsql "select id, description, done, tags from tasks where done=false and tags LIKE '%%' || 'univ' || '%%';"
    goto end 
    :tasks_insert_self
      FOR /F "tokens=* USEBACKQ" %%F IN (`delquotes %3`) DO (SET description=%%F)
        
      @call mpsql "insert into tasks (description, tags) values ('%description%', 'self');" > nul
      @call mpsql "select id, description, done, tags from tasks where done=false;"
    goto end 
    :DONE 
        set currentParameter=%4
        set currentParameter=%currentParameter:~1,-1%
        echo %currentParameter%
        if "%4"=="" (
            set currentParameter=
            echo here
        )
        mpsql "update tasks set done=true,result='%currentParameter%' where id=%3;"        
    goto end 
    :TASKS_ALL
        mpsql "select id, description, done, result from tasks;"
    goto end 
    :EMPTY_TASKS
        mpsql "select id, description, done, tags from tasks where done=false order by id;"
    goto end 

goto end

:idledeferal
mpsql "INSERT INTO idle (date, duration) values (TO_DATE('%2/2018', 'DD/MM/YYYY'), %3);"
goto end

:idletoday
mpsql "INSERT INTO idle (date, duration) values (CURRENT_DATE, %2);"
goto end

:idle
mpsql "SELECT * FROM idle order by date;"
goto end


:self
mpsql "INSERT INTO calendar (date, self) values (CURRENT_DATE, true );" > nul
goto end


:defself
    mpsql "INSERT INTO calendar (date, self) values (TO_DATE('%2/2018', 'DD/MM/YYYY'), true);" 

goto end


REM todo 2 rows : first from 2 to n, second: 1 to n-1
:calendar
mpsql "SELECT * FROM calendar order by date;"
goto end

:defpol
    mpsql "INSERT INTO calendar (date, self) values (TO_DATE('%2/2019', 'DD/MM/YYYY'), false);" 
goto end

:POL
    echo in POL 
mpsql "INSERT INTO calendar (date, self) values (CURRENT_DATE, false);" 
goto end

:EMPTY

goto end

:END
