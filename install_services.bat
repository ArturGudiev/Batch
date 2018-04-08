@echo off

start dpa ds install
timeout 1 
start dpa ds cts
timeout 1
start dpa app install