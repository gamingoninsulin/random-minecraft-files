@echo off
rem created with google gemini free version ai!
rem ##############################################################################################################

set BUNGEECORD_URL=https://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar
set OUTPUT_FILE=BungeeCord.jar

rem ##############################################################################################################

echo Downloading the latest version of %OUTPUT_FILE%...
wget -O "%OUTPUT_FILE%" "%BUNGEECORD_URL%"

if errorlevel 1 (
 	echo Error downloading %OUTPUT_FILE%! Exiting...
 	exit /b 1
)
pause