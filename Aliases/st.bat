@echo off

if [%1]==[b] (  
	bb 
	dpa svc stat
	goto end 
)

idpa stat %* 

:end 