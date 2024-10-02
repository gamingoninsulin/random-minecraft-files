#!/bin/bash

# Download URL
jar_url="https://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar"

# Server JAR filename
MC_SERVER_JAR="BungeeCord.jar"

echo "Downloading BungeeCord server..."

# Download using wget with progress bar
curl -o "$MC_SERVER_JAR" -SL "$jar_url"

if [[ $? -ne 0 ]]; then
  echo "Error downloading BungeeCord server JAR! Exiting..."
  exit 1
fi

echo "BungeeCord server JAR downloaded successfully!"

