import 'package:{{project_name.snakeCase()}}_ui/{{project_name.snakeCase()}}_ui.dart';
import 'package:flutter/material.dart';

///Extension on Themedata that must be added to return the correct asset
extension ThemeX on ThemeData {
  ///Returns the UIIcon class for accessing the icons
  UIIcon get icons => UIIcon(colorInitial: iconTheme.color!);

  ///Returns the Images class for accessing the images
  UIImage get images => UIImage();
}
