#!/bin/bash

###################################################################################################

# Paper version (add underscores instead of dots)
PAPER_VERSION="1_21"

# Download URL
jar_url="https://mineacademy.org/api/paper/$PAPER_VERSION"

# Server JAR filename
MC_SERVER_JAR="paperclip_${PAPER_VERSION}.jar"

# Minecraft world name (change if you want)
MC_WORLD_NAME="World"

# Maximum server RAM (half of full ram!)
MC_MAX_RAM="8G"

###################################################################################################

# Check for existing JAR
if [ -f "$MC_SERVER_JAR" ]; then
  echo "paperclip.jar already exists. Skipping download."
else
  echo "Downloading paperclip.jar..."
  wget -O "$MC_SERVER_JAR" "$jar_url"
  if [ $? -ne 0 ]; then
    echo "Error downloading paperclip.jar! Exiting..."
    exit 1
  fi
fi

# Start the server
echo "Starting Minecraft server..."
java -Xms1024M -Xmx$MC_MAX_RAM -jar $MC_SERVER_JAR --nogui --world $MC_WORLD_NAME

# Check server process
if [ $? -ne 0 ]; then
  echo "This server has crashed. Check console.log and address any crashes."
  exit 1
fi

while true; do
  # Restart server
  echo "Restarting Minecraft server..."
  java -Xms1024M -Xmx$MC_MAX_RAM -jar $MC_SERVER_JAR --nogui --world $MC_WORLD_NAME
  
  # Check server process
  if [ $? -ne 0 ]; then
    echo "This server has crashed. Check console.log and address any crashes."
  fi
  
  # Sleep for some time before restart
  sleep 10
done
