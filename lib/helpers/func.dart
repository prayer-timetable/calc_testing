// import package resources
import 'package:date_format/date_format.dart';

String appendZero(unit) {
  if (unit < 10) {
    return '0$unit';
  }
  return '$unit';
}

String toTwoDigitString(int value) {
  return value.toString().padLeft(2, '0');
}

String printDuration(Duration duration, {adjust: 0}) {
  String twoDigits(int n) {
    if (n >= 10) return "$n";
    return "0$n";
  }

  String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
  String twoDigitSeconds =
      twoDigits((duration + Duration(seconds: adjust)).inSeconds.remainder(60));
  return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
}

String capitalise(String s) =>
    s.length > 0 ? s[0].toUpperCase() + s.substring(1) : '';

double round2Decimals(value) => num.parse(value.toStringAsFixed(2));

int getHour(time) => int.parse(formatDate(time, [H]));
int getMinute(time) => int.parse(formatDate(time, [n]));

// Future launchUrl(url, {extras}) async {
//   if (await canLaunch(url)) {
//     extras != null
//         ? await launch(
//             url,
//             forceWebView: true,
//             forceSafariVC: true,
//             enableJavaScript: true,
//           )
//         : await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
