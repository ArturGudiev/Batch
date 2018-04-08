@echo off

for %%x in (%*) do (
   tr os %%~x 
)