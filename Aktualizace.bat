:nastaveni
@echo off
title Updater
color 27
cls
:tvojeverze
cd C:\Users\%USERNAME%\Desktop\UPDATER\tmp\data
type yvoa.version
:checkupdate
type jjv.version
:stahnoutdata
echo CHCETE STAHNOUT NOVE DATA ? 
set /p num=NAPISTE (Y NEBO N):
if %num%==y goto ano
if %num%==n goto ne
:ne
exit
:ano
cd C:\Users\%USERNAME%\Desktop\UPDATER\tmp\pluginy
start zjnv.bat
start zjjv.bat
timeout 2
cls
cd C:\Users\%USERNAME%\Desktop\UPDATER\tmp\data
type yvoa.version
:checkupdate
type jjv.version
:stahnoutdata
echo CHCETE STAHNOUT AKTUALIZACNI PROGRAM ? 
set /p num=NAPISTE (Y NEBO N):
if %num%==y goto sthn
if %num%==n goto ne
:sthn
cd C:\Users\%USERNAME%\Desktop\UPDATER\tmp\pluginy
start dwnl_updt_files.bat
timeout 2
cls
start opninstl.bat
exit

