@echo off

if "%1"=="" goto EMPTY
if "%1"=="fc" goto flatcomponent
if "%1"=="flatcomponent" goto flatcomponent
if "%1"=="stackm" goto stackm
goto end

:stackm
cc @Inject(StackableModalService) private stackableModal: StreamService StackableModalType,
goto end

:flatcomponent
    @call set name=%2
    @call ng generate module %name%
    cd %name% 
    @call ng generate component %name% --entryComponent=true --export=true --flat=true
goto end

:EMPTY

goto end

:END
