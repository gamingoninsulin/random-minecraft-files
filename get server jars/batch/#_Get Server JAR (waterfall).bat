@echo off
rem created with google gemini free version ai!
rem ##############################################################################################################

rem Set the waterfall jar version to be downloaded from https://www.papermc.io/software/waterfall
rem IMPORTANT!! USED "_" instead of "." 
rem also keep in mind to delete the current waterfall jar if you already have one and changed the version!
set WATERFALL_VERSION=1_21

rem Set the server JAR download URL
set "jar_url=https://mineacademy.org/api/waterfall/%WATERFALL_VERSION%"

rem Set the server JAR filename with the desired version
set "MC_SERVER_JAR=waterfall_%WATERFALL_VERSION%.jar"


rem ##############################################################################################################

echo Downloading waterfall.jar...
wget -o "%MC_SERVER_JAR%" "%jar_url%"
if errorlevel 1 (
	echo Error downloading waterfall.jar! Exiting...
	exit /b 1
)
