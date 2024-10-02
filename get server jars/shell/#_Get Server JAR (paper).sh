#!/bin/bash

# Paper version (use "." instead of "_")
PAPER_VERSION="1_21_1"

# Download URL (use official PaperMC API)
jar_url="https://api.papermc.io/v2/projects/paper/versions/$PAPER_VERSION"

# Server JAR filename (avoid "paperclip")
MC_SERVER_JAR="paperclip_$PAPER_VERSION.jar"

echo "Downloading Paper server $PAPER_VERSION..."

# Download using curl with progress bar
curl -o "$MC_SERVER_JAR" -SL "$jar_url"

if [[ $? -ne 0 ]]; then
  echo "Error downloading Paper server JAR! Exiting..."
  exit 1
fi

echo "Paper server JAR downloaded successfully!"

