rem ##############################################################################################################
@echo off


rem Set the title of the console
title "Minecraft Server Console"


rem Set the paper jar version to be downloaded from https://www.papermc.io/software/paper
rem IMPORTANT!! USED "_" instead of "."
set PAPER_VERSION=1_21


rem Set the server JAR download URL
set "jar_url=https://mineacademy.org/api/paper/%PAPER_VERSION%"


rem Set the server JAR filename
set "MC_SERVER_JAR=paperclip.jar"


rem Set the Minecraft world name
set MC_WORLD_NAME=World


rem Set the max RAM used by the server
set MC_MAX_RAM=8G

rem ##############################################################################################################

:CheckForJar
if exist "%MC_SERVER_JAR%" (
  echo paperclip.jar already exists. Skipping download.
) else (
  echo Downloading paperclip.jar...
  curl -o "%MC_SERVER_JAR%" "%jar_url%"
  if errorlevel 1 (
    echo Error downloading paperclip.jar! Exiting...
    exit /b 1
  )
)

:StartServer
  echo Starting Minecraft server...
  java -Xms1024M -Xmx%MC_MAX_RAM% -jar %MC_SERVER_JAR% --nogui --world %MC_WORLD_NAME%

  REM Check if the server process is still running
  if not errorlevel 0 (
    echo This server has crashed. Check console.log and address any crashes.
    pause
    exit
  )

  REM Wait for 10 seconds before restarting
  timeout /t 10 /nobreak

  REM Restart the server
  goto StartServer
  