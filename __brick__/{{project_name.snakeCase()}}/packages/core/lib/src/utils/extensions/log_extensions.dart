import 'dart:convert';
import 'dart:developer' as devtools show log;

/// Retrieve the value of a key from a map, or return the default value if the
extension BoolFromStringParsing on String {
  /// Parses a string to a boolean value.
  bool parseBool() => toLowerCase() == 'true';
}

/// Retrieve the value of a key from a map, or return the default value if the
extension Log on Object {
  /// Logs the object to the console.
  void log() => devtools.log(toString());

  /// Logs the object to the console with a prefix.
  String mapBuffer(final dynamic object, {final int indent = 0}) {
    final indentString = ' ' * indent;
    final buffer = StringBuffer();

    dynamic parsedObject = object;

    // Attempt to parse if the object is a string and could be JSON.
    if (parsedObject is String) {
      try {
        parsedObject = jsonDecode(parsedObject);
      } on Object {
        // If parsing fails, it's just a regular string.
      }
    }

    if (parsedObject is Map) {
      buffer.writeln('${indentString}Map {');
      parsedObject.forEach((final key, final value) {
        buffer.write('$indentString  $key: ');
        if (value is Map || value is List) {
          buffer
            ..writeln()
            ..write(mapBuffer(value, indent: indent + 4));
        } else {
          buffer.writeln(value.toString());
        }
      });
      buffer.writeln('$indentString}');
    } else if (parsedObject is List) {
      if (parsedObject.isEmpty) {
        buffer.writeln('$indentString[]');
      } else {
        buffer.writeln('${indentString}List [');
        for (final value in parsedObject) {
          if (value is Map || value is List) {
            buffer.write(mapBuffer(value, indent: indent + 4));
          } else {
            buffer.writeln('$indentString  $value');
          }
        }
        buffer.writeln('$indentString]');
      }
    } else {
      buffer.writeln('$indentString$object');
    }

    return buffer.toString();
  }

  /// Logs the object to the console with a prefix.
  void printR(final dynamic object, {final int indent = 0}) =>
      mapBuffer(object, indent: indent).log();
}
