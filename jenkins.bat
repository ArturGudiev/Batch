@echo off


for %%x in (%*) do (
  echo %%x
)


if "%1"=="server" goto ServerInstaller
if "%1"=="agent" goto AgentInstaller
if "%1"=="w" goto WORK
if "%1"=="63" goto S63
if "%1"=="64" goto S64
if "%1"=="65" goto S65
if "%1"=="-h" goto help
goto end

:HELP
echo server		-- Download server installer
echo agent		-- Download agent installer
goto end

:S65
start chrome https://dpa-ci.lss.emc.com/view/6.5.0/
goto end

:S63
start chrome https://dpa-ci.lss.emc.com/view/6.3.0/
goto end


:S64
start chrome https://dpa-ci.lss.emc.com/view/6.4.0/
goto end

:ServerInstaller
start https://dpa-ci.lss.emc.com/view/DPA-Trunk/job/DPA-TRUNK-Installer/lastSuccessfulBuild/artifact/
start https://dpa-ci.lss.emc.com/view/DPA-Trunk/job/DPA-TRUNK-Installer/lastSuccessfulBuild/artifact/server/create/target/
goto end

:AgentInstaller
start https://dpa-ci.lss.emc.com/view/DPA-Trunk/job/DPA-TRUNK-Installer/lastSuccessfulBuild/artifact/agents/create/target/
goto end

:PM
start https://trello.com/b/q1SsfrNe/work
goto end

:END

