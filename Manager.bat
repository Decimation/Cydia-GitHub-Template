@echo off

title Repo Manager [Personal]

:Main
cls
echo [Home ^> ... ]
echo Welcome to CyRepo Utilities
echo.
echo 1. New package entry
echo 2. About
echo.

:: Get option input
set /p option= [Option]: %=%
if "%option%"=="" goto Main
if "%option%"== "1" goto packageEntry1
if "%option%"== "2" goto about

::-----------------------------------------------------------------------------------------------------------------------------------
:about

cls
echo [Home ^> About]
echo.
echo Written by: Decimation
echo Twitter: @dec1mati0n
echo Reddit: /u/_Decimation
echo Build date: July 14, 2015
echo.
pause
goto Main
::-----------------------------------------------------------------------------------------------------------------------------------
:packageEntry1

cls
echo [Home ^> Package Entry][Status: Gathering info]
echo [Stage 1/7]
echo.
echo Enter your GitHub Repo directory.
echo.
::set /p repoDir= [GitHub Repo]: %=%
cd %userprofile%\Documents\GitHub\decimation.github.io
echo %cd%
pause
cls
goto packageEntry2
::-----------------------------------------------------------------------------------------------------------------------------------
:packageEntry2

echo [Home ^> Package Entry][Status: Gathering info]
echo [Stage 2/7]
echo.
echo Enter your package name. (deb file)
echo Example: com.decimation.packagename
echo.
set /p packageName= [Package name]: %=%
set /p normalPackageName= [Normal package name]: %=%
cls
goto createPackageDirs
::-----------------------------------------------------------------------------------------------------------------------------------
:createPackageDirs

echo %cd%
echo.
echo Creating dirs
cd Depictions
mkdir %packageName%
cd %packageName%
mkdir screenshots
