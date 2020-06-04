import 'package:date_format/date_format.dart';

class BosnianLocale implements Locale {
  const BosnianLocale();

  final List<String> monthsShort = const [
    'jan',
    'feb',
    'mar',
    'apr',
    'maj',
    'jun',
    'jul',
    'avg',
    'sep',
    'okt',
    'nov',
    'dec'
  ];

  final List<String> monthsLong = const [
    'januar',
    'februar',
    'mart',
    'april',
    'maj',
    'juni',
    'juli',
    'avgust',
    'septembar',
    'oktobar',
    'novembar',
    'decembar'
  ];

  final List<String> daysShort = const [
    'pon',
    'uto',
    'sri',
    'čet',
    'pet',
    'sub',
    'ned'
  ];

  final List<String> daysLong = const [
    'ponedjeljak',
    'utorak',
    'srijeda',
    'četvrtak',
    'petak',
    'subota',
    'nedjelja'
  ];

  // @override
  // String get am => "ujutro";

  // @override
  // String get pm => "popodne";
}
