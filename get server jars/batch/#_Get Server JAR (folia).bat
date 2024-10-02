@echo off
rem created with google gemini free version ai!
rem ##############################################################################################################

rem Set the folia jar version to be downloaded from https://www.papermc.io/software/folia
rem IMPORTANT!! USED "_" instead of "." 
rem also keep in mind to delete the current folia jar if you already have one and changed the version!
set FOLIA_VERSION=3_4_0-SNAPSHOT

rem Set the server JAR download URL
set "jar_url=https://mineacademy.org/api/folia/%FOLIA_VERSION%"

rem Set the server JAR filename with the desired version
set "MC_SERVER_JAR=folia_%FOLIA_VERSION%.jar"


rem ##############################################################################################################

echo Downloading folia.jar...
wget -o "%MC_SERVER_JAR%" "%jar_url%"
if errorlevel 1 (
	echo Error downloading folia.jar! Exiting...
	exit /b 1
)
