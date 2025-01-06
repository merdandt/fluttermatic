import 'package:{{project_name.snakeCase()}}_ui/{{project_name.snakeCase()}}_ui.dart';
import 'package:flutter/material.dart';

///Extension on Themedata that must be added to return the correct asset
extension ThemeX on ThemeData {
  ///Returns the UIIcon class for accessing the icons
  {{short_name.upperCase()}}Icon get icons => {{short_name.upperCase()}}Icon(colorInitial: iconTheme.color!);

  ///Returns the Images class for accessing the images
  {{short_name.upperCase()}}Image get images => {{short_name.upperCase()}}Image();
}
