#!/bin/bash

# velocity version (use "." instead of "_")
VELOCITY_VERSION="3_4_0-SNAPSHOT"

# Download URL (use official velocityMC API)
jar_url="https://api.papermc.io/v2/projects/velocity/versions/$VELOCITY_VERSION"

# Server JAR filename
MC_SERVER_JAR="velocity_$VELOCITY_VERSION.jar"

echo "Downloading velocity server $VELOCITY_VERSION..."

# Download using curl with progress bar
curl -o "$MC_SERVER_JAR" -SL "$jar_url"

if [[ $? -ne 0 ]]; then
  echo "Error downloading velocity server JAR! Exiting..."
  break
  exit 1
fi

echo "velocity server JAR downloaded successfully!"

break