@echo off


if "%1"=="sent" goto SENT
if "%1"=="i" goto INBOX
if "%1"=="inbox" goto INBOX
if "%1"=="new" goto NEW
if "%1"=="n" goto NEW
if "%1"=="deu" goto german
if "%1"=="deutch" goto german
if "%1"=="german" goto german

if "%1"=="another" goto another
if "%1"=="dsl" goto dsl 
if "%1"=="azure" goto azure
if "%1"=="az" goto azure
if "%1"=="--help" goto HELP
if "%1"=="" goto empty
if "%1"=="step" goto Stepanov
if "%1"=="az" goto azure

if "%1"=="w" goto work
if "%1"=="fifa" goto fifa
if "%1"=="images" goto images
if "%1"=="u" goto univ
if "%1"=="s" goto search
if "%1"=="search" goto search
goto end

:search
ch https://mail.google.com/mail/u/0/#search/%2
goto end

:univ
ch https://mail.google.com/mail/u/0/#label/%%D0%%A3%%D0%%BD%%D0%%B8%%D0%%B2%%D0%%B5%%D1%%80%%D1%%81%%D0%%B8%%D1%%82%%D0%%B5%%D1%%82
goto end

:images
ch https://mail.google.com/mail/u/0/#label/%%D0%%A3%%D0%%BD%%D0%%B8%%D0%%B2%%D0%%B5%%D1%%80%%D1%%81%%D0%%B8%%D1%%82%%D0%%B5%%D1%%82/1619eff3ee21a7ad
goto end

:fifa
ch https://mail.google.com/mail/u/0/#label/%%D0%%A7%%D0%%9C-2018
goto end

:work
start outlook
goto end

:azure
ch https://mail.google.com/mail/u/0/#label/Azure
goto end

:Stepanov
ch https://mail.google.com/mail/u/0/#inbox/1619eff3ee21a7ad
goto end

:EMPTY
ch https://mail.google.com/mail/u/0/#inbox
goto end 

:AZURE
ch https://mail.google.com/mail/u/0/#label/Azure
goto end 

:DSL 
ch https://mail.google.com/mail/u/0/#label/DSL
goto end

:ANOTHER
ch "https://accounts.google.com/ServiceLogin/signinchooser?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLoginhttps://accounts.google.com/ServiceLogin/signinchooser?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin"
goto end

:INBOX
ch https://mail.google.com/mail/u/0/#inbox
goto end

:GERMAN
ch https://mail.google.com/mail/u/0/#label/%%D0%%A3%%D0%%BD%%D0%%B8%%D0%%B2%%D0%%B5%%D1%%80%%D1%%81%%D0%%B8%%D1%%82%%D0%%B5%%D1%%82%%2F%%D0%%9D%%D0%%B5%%D0%%BC%%D0%%B5%%D1%%86%%D0%%BA%%D0%%B8%%D0%%B9
goto end

:NEW
echo new mail
	if "%2"=="dady" goto new_dady
	if "%2"=="terekhov" goto new_terekhov
	if "%2"=="ter" goto new_terekhov
	ch https://mail.google.com/mail/u/0/#inbox?compose=new
	goto end
	
	:NEW_DADY
	ch https://mail.google.com/mail/u/0/#inbox?compose=162387447ab4065b
	goto end
	
	:NEW_TEREKHOV
	ch https://mail.google.com/mail/u/0/#search/Andrey.Terekhov%40lanit-tercom.com/15e6f2fb764ad201
	goto end
goto end

:SENT
ch https://mail.google.com/mail/u/0/#sent
goto end


:HELP
echo. 
echo sent, s 	--	Open Sent messages in inbox
echo inbox, i 	--	Inbox messages
echo new, n 	--	New Message
echo. 
goto end

:END

