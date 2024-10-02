@echo off
rem created with google gemini free version ai!
rem ##############################################################################################################

rem Set the paper jar version to be downloaded from https://www.papermc.io/software/paper
rem IMPORTANT!! USED "_" instead of "." 
rem also keep in mind to delete the current paperclip jar if you already have one and changed the version!
set PAPER_VERSION=1_21_1

rem Set the server JAR download URL
set "jar_url=https://mineacademy.org/api/paper/%PAPER_VERSION%"

rem Set the server JAR filename with the desired version
set "MC_SERVER_JAR=paperclip_%PAPER_VERSION%.jar"


rem ##############################################################################################################

:CheckForJar
echo Downloading paperclip.jar...
wget -o "%MC_SERVER_JAR%" "%jar_url%"
if errorlevel 1 (
	echo Error downloading paperclip.jar! Exiting...
	exit /b 1
)
