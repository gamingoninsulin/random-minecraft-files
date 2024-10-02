@echo off
rem created with google gemini free version ai!
rem ##############################################################################################################

rem Set the velocity jar version to be downloaded from https://www.papermc.io/software/velocity
rem IMPORTANT!! USED "_" instead of "." 
rem also keep in mind to delete the current velocity jar if you already have one and changed the version!
set VELOCITY_VERSION=3_4_0-SNAPSHOT

rem Set the server JAR download URL
set "jar_url=https://mineacademy.org/api/velocity/%VELOCITY_VERSION%"

rem Set the server JAR filename with the desired version
set "MC_SERVER_JAR=velocity_%VELOCITY_VERSION%.jar"


rem ##############################################################################################################

echo Downloading velocity.jar...
wget -o "%MC_SERVER_JAR%" "%jar_url%"
if errorlevel 1 (
	echo Error downloading velocity.jar! Exiting...
	exit /b 1
)
