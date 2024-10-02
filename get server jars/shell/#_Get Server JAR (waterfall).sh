#!/bin/bash

# waterfall version (use "." instead of "_")
WATERFALL_VERSION="1_21_1"

# Download URL (use official waterfallMC API)
jar_url="https://api.papermc.io/v2/projects/waterfall/versions/$WATERFALL_VERSION"

# Server JAR filename
MC_SERVER_JAR="waterfall_$WATERFALL_VERSION.jar"

echo "Downloading waterfall server $WATERFALL_VERSION..."

# Download using curl with progress bar
curl -o "$MC_SERVER_JAR" -SL "$jar_url"

if [[ $? -ne 0 ]]; then
  echo "Error downloading waterfall server JAR! Exiting..."
  exit 1
fi

echo "waterfall server JAR downloaded successfully!"

