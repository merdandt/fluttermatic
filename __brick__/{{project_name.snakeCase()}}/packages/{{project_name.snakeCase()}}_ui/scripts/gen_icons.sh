#!/bin/bash

# Get the directory where the script is located
scriptDir=$(dirname "$0")

# Define the paths relative to the script location
inputDir="$scriptDir/../assets/icons/"
outputDir="$scriptDir/../lib/src/icons/"
outputFile="${outputDir}{{project_name.snakeCase()}}_ui_icons.dart"

# Ensure the output directory exists
mkdir -p "$outputDir"

# Remove the old output file if it exists
rm -f "$outputFile"

# Start writing the class header to the outputFile
cat > "$outputFile" <<EOF
  import 'package:flutter/material.dart';
  import 'package:flutter_svg/flutter_svg.dart';
  import 'package:{{project_name.snakeCase()}}_ui/gen/assets.gen.dart';

  class {{short_name.upperCase()}}Icon {
    const {{short_name.upperCase()}}Icon({required this.colorInitial});

    final Color colorInitial;

EOF

snake_to_camel() {
    echo "$1" | awk 'BEGIN{FS="_";OFS=""}{for(i=1;i<=NF;i++)if(i==1)$i=tolower(substr($i,1,1)) tolower(substr($i,2));else $i=toupper(substr($i,1,1)) tolower(substr($i,2))}1'
}



# Iterate over all .svg files in the input directory
for file in ${inputDir}*.svg; do
    # Extract file name without extension and convert it to camelCase
    filename=$(basename -- "$file" .svg)
    camelCaseName=$(snake_to_camel "$filename")

    # Write the SVG icon function to the file
    cat >> "$outputFile" <<EOF

   SvgPicture $camelCaseName({
    final double? size,
    final Color? color,
    final BoxFit fit = BoxFit.contain,
    }) =>
      Assets.icons.$camelCaseName.svg(
        colorFilter: ColorFilter.mode(
          color ?? colorInitial,
          BlendMode.srcIn,
        ),
        fit: fit,
        height: size ?? 22,
        width: size ?? 22,
      );
EOF
done

# Finish the class definition
echo "}" >> "$outputFile"

echo "Dart file $outputFile has been generated."
