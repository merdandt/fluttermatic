#!/bin/bash

# Get the absolute path to the directory where the script is located
scriptDir="$(cd "$(dirname "$0")"; pwd)"

# Define the package directory which is one level above the script directory
packageDir="$(dirname "$scriptDir")"

# Set execute permissions for gen_icons.sh and gen_images.sh
chmod +x "$scriptDir/gen_icons.sh"
chmod +x "$scriptDir/gen_images.sh"

# Change to the package directory
cd "$packageDir"

# Run flutter pub run build_runner build
echo "Running dart run build_runner in $packageDir"
dart run build_runner build

# Check if the dart run build_runner command was successful
if [ $? -eq 0 ]; then
    echo "dart run build_runner has completed successfully."
    
    # Run gen_icons.sh
    if [ -f "$scriptDir/gen_icons.sh" ]; then
        echo "Running gen_icons.sh..."
        "$scriptDir/gen_icons.sh"

        # Check if the gen_icons.sh command was successful
        if [ $? -eq 0 ]; then
            echo "gen_icons.sh has completed successfully."
        else
            echo "gen_icons.sh encountered an error."
        fi
    else
        echo "Error: gen_icons.sh does not exist at $scriptDir/gen_icons.sh"
    fi

    # Run gen_images.sh
    if [ -f "$scriptDir/gen_images.sh" ]; then
        echo "Running gen_images.sh..."
        "$scriptDir/gen_images.sh"

        # Check if the gen_images.sh command was successful
        if [ $? -eq 0 ]; then
            echo "gen_images.sh has completed successfully."
        else
            echo "gen_images.sh encountered an error."
        fi
    else
        echo "Error: gen_images.sh does not exist at $scriptDir/gen_images.sh"
    fi
else
    echo "dart run build_runner encountered an error."
fi
