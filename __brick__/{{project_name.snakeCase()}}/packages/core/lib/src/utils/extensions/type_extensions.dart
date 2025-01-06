import 'package:flutter/material.dart';
import 'package:internationalization/internationalization.dart';

const _searchPrefix = 'search:';
const _searchCategory = 'category:';

extension CapitalizeStringExtension on String {
  String get inCaps =>
      isNotEmpty ? '${this[0].toUpperCase()}${substring(1)}' : '';
}

extension SearchPrefix on String {
  /// Adds the search prefix to the string
  String get addSearchPrefix => _searchPrefix + this;

  /// Adds the category prefix to the string
  String addCategory(final String? id) =>
      id == null ? this : this + _searchCategory + id;

  /// Checks if the string has the search prefix
  bool get isSearchPrefix => startsWith(_searchPrefix);

  /// Checks if the string has the category prefix
  bool get hasCategory => contains(_searchCategory);

  /// Splits the string by the search prefix
  String get removeSearchPrefix => replaceFirst(_searchPrefix, '');

  /// Splits the string by the category prefix
  String get removeCategory => categoryPrefixSplit.first;

  /// Splits the string by the category prefix
  List<String> get categoryPrefixSplit =>
      hasCategory ? split(_searchCategory) : [this];

  /// Clear the search text
  String get clearSearch => removeSearchPrefix.removeCategory;
}

extension HexColor on String {
  // A method that converts hex string to a Color object
  Color get toColor {
    final buffer = StringBuffer();
    if (length == 6 || length == 7) buffer.write('ff');
    buffer.write(replaceFirst('#', ''));

    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

extension DateTimeSeparation on String {
  String get getMonth {
    assert(contains('/'), 'The date must contain a /');

    return split('/').first;
  }

  String get getYear {
    assert(contains('/'), 'The date must contain a /');

    return split('/').last;
  }

  String get getLast2DigitsOfTheYear =>
      '${this[length - 2]}${this[length - 1]}';
}

extension SuperTrim on String {
  String get superTrim => replaceAll(' ', '').trim();
}

extension PYGGProtocol on String {
  String get insertProtocolSlash {
    if (length < 3) {
      return this;
    }
    if (contains('/')) return this;

    return '${substring(0, 2)}/${substring(2)}';
  }
}

extension PhoneNumberFormatter on String {
  String toFormattedPhoneNumber() {
    if (isEmpty || length != 11) {
      return this;
    }

    return '+${substring(0, 3)} ${substring(3, 5)} ${substring(5)}';
  }
}

// extension CardNumberFormatter on String {
//   String toFormattedCardNumber() {
//     if (isEmpty || length == 19) {
//       return this;
//     }
//     return formatToCard;
//   }
// }

extension PhoneNumberFormatter8 on String {
  String toFormattedPhoneNumber8() {
    if (isEmpty || length != 9) {
      return this;
    }

    return '${substring(1, 3)} ${substring(3)}';
  }
}

extension ObscureBankNumber on String {
  String get obscureBankNumber {
    final length = this.length;
    final lastFour = substring(length - 4, length);

    return '**** $lastFour';
  }
}

extension PhoneCode on String {
  String get format8toInput => '${substring(0, 2)} ${substring(2)}';

  String get addPhoneCode => '993${replaceAll(' ', '')}';
  String get addGtsPhoneCode => '99312${replaceAll(' ', '')}';
  String get removePhoneCode => split('993').last;
  String get removePlus => replaceFirst('+', '');
  String get addPlus => '+$this';
  String get extractNumber => startsWith('993')
      ? removePhoneCode.format8toInput
      : substring(1).format8toInput;
}

extension DateTimeConvertor on String {
  DateTime get toDate {
    final values = split('-');
    // 2024-02-26

    return DateTime(
      int.parse(values.first),
      int.parse(values[1]),
      int.parse(values.last),
    );
  }
}

extension DateFormatParser on String {
  String get toFormattedDate => DateTime.parse(this).toUIString;
}

extension DateFormatMonthParser on String {
  String get toFormattedDateMonth => DateFormat('d MMMM').format(toDate);
}

extension DateTimeParser on DateTime {
  String get toServerFormat => toString().split(' ').first;
  String get toUIString => DateFormat('dd.MM.yyyy').format(this);
  String get notificationDate => DateFormat('MMM dd, yyyy, hh:mm').format(this);
}

extension StringResponse on String {
  bool get httpOk => this == 'ok';
}

extension DoubleExt on double {
  String get priceFormat {
    var formattedValue = toString();
    if (formattedValue.contains('.')) {
      formattedValue = formattedValue.replaceAllMapped(
        RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
        (final match) => '${match[1]},',
      );
      formattedValue = formattedValue.replaceAll(RegExp(r'0+$'), '');
      formattedValue = formattedValue.replaceAll(RegExp(r'\.$'), '');
    }

    return formattedValue;
  }
}

/// Simple toString from DateTime extension
extension SimpleDateTime on DateTime {
  String get toSimpleDate => '$year-${month.toString().padLeft(2, '0')}-'
      '${day.toString().padLeft(2, '0')}';
}
