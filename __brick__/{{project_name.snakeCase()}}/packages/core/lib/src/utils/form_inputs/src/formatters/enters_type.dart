enum EntersType implements Comparable<EntersType> {
  /// Only numbers are allowed
  number(regex: '[0-9]'),

  /// Only alphabets letters are allowed
  alphabet(regex: '[A-Za-z]'),

  /// Numbers and alphabets letters are allowed
  mixed(regex: '[0-9A-Za-z]');

  const EntersType({
    required this.regex,
  });

  final String regex;

  int get enterHash => regex.hashCode;

  @override
  int compareTo(final EntersType other) => enterHash - other.enterHash;
}
