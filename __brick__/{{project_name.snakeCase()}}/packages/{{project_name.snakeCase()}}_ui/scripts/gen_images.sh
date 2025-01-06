#!/bin/bash

# Get the directory where the script is located
scriptDir=$(dirname "$0")

# Define the paths relative to the script location
inputDir="$scriptDir/../assets/images/"
outputDir="$scriptDir/../lib/src/images/"
outputFile="${outputDir}{{project_name.snakeCase()}}_ui_images.dart"

# Ensure the output directory exists
mkdir -p "$outputDir"

# Remove the old output file if it exists
rm -f "$outputFile"

# Start writing the class header to the outputFile
cat > "$outputFile" <<EOF
import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}_ui/gen/assets.gen.dart';

class UIImage {
EOF

snake_to_camel() {
    echo "$1" | awk 'BEGIN{FS="_";OFS=""}{for(i=1;i<=NF;i++)if(i==1)$i=tolower(substr($i,1,1))tolower(substr($i,2));else $i=toupper(substr($i,1,1))tolower(substr($i,2))}1'
}

# Iterate over all image files in the input directory
for file in "$inputDir"*.{svg,png,jpg}; do
    # Check if file exists
    if [[ -e "$file" ]]; then
        # Extract file name without extension
        filename=$(basename -- "$file")
        extension="${filename##*.}"
        filename="${filename%.*}"
        camelCaseName=$(snake_to_camel "$filename")

        # Check file extension to determine the type of widget to generate
        if [ "$extension" = "svg" ]; then
            # Write the SvgPicture widget function to the file
            cat >> "$outputFile" <<EOF

  SvgPicture $camelCaseName({
    final BoxFit fit = BoxFit.contain,
    final double? width,
    final double? height,
  }) =>
      Assets.images.$camelCaseName.svg(
        fit: fit,
        width: width,
        height: height,
      );
EOF
        else
            # Write the Image widget function for raster images (png, jpg) to the file
            cat >> "$outputFile" <<EOF

  Image $camelCaseName({
    final Color? color,
    final double? scale,
    final BoxFit? fit,
    final double? width,
    final double? height,
    final int? cacheWidth,
    final int? cacheHeight,
  }) =>
      Assets.images.$camelCaseName.image(
        color: color,
        scale: scale,
        fit: fit,
        width: width,
        height: height,
        cacheWidth: cacheWidth,
        cacheHeight: cacheHeight,
      );
EOF
        fi
    fi
done

# Finish the class definition
echo "}" >> "$outputFile"

echo "Dart file $outputFile has been generated."
