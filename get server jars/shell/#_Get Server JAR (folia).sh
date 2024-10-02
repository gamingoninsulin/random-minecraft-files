#!/bin/bash

# folia version (use "." instead of "_")
FOLIA_VERSION="1_20_6"

# Download URL (use official foliaMC API)
jar_url="https://api.papermc.io/v2/projects/folia/versions/$FOLIA_VERSION"

# Server JAR filename
MC_SERVER_JAR="folia_$FOLIA_VERSION.jar"

echo "Downloading folia server $folia_VERSION..."

# Download using curl with progress bar
curl -o "$MC_SERVER_JAR" -SL "$jar_url"

if [[ $? -ne 0 ]]; then
  echo "Error downloading folia server JAR! Exiting..."
  exit 1
fi

echo "folia server JAR downloaded successfully!"

