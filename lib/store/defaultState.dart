import 'package:calc_testing/helpers/prayerClasses.dart';
import 'package:calc_testing/helpers/language.dart';

DateTime now = DateTime.now().toUtc();

// needed for fetchDefault
Map defaultSettings = {
  'hijriOffset': 0,
  'join': false,
  'joinDhuhr': false,
  'jumuahTime': [13, 10],
  'taraweehTime': [23, 0],
  'updated': 1546300800,
};

Strings defaultStrings = new Strings(
  updated: '',
  now: '',
  date: '',
  hijri: '',
  hijriMonth: '',
  countdownName: '',
  countdownTime: '',
  countupName: '',
  countupTime: '',
  countupNameFrom: '',
  prayers: ['', '', '', '', '', ''],
  current: '',
  midnight: '',
  lastThird: '',
);

// DEFAULT PRAYERS
Prayer fajr = Prayer(
  now,
  0,
  true,
  namesPrayer[0],
  whenText[0],
  false,
);

Prayer shurooq = Prayer(
  now,
  1,
  true,
  namesPrayer[1],
  whenText[0],
  false,
);
Prayer dhuhr = Prayer(
  now,
  2,
  false,
  namesPrayer[2],
  whenText[0],
  false,
);
Prayer asr = Prayer(
  now,
  0,
  true,
  namesPrayer[3],
  whenText[0],
  false,
);
Prayer maghrib = Prayer(
  now,
  0,
  true,
  namesPrayer[4],
  whenText[0],
  false,
);
Prayer isha = Prayer(
  now,
  0,
  true,
  namesPrayer[5],
  whenText[0],
  false,
);
Prayer current = dhuhr;
Prayer next = asr;
Prayer previous = shurooq;

List<Prayer> prayersList = [
  fajr,
  shurooq,
  dhuhr,
  asr,
  maghrib,
  isha,
];

Map countUp = {'name': '', 'time': now, 'duration': Duration(seconds: 0)};
Map countDown = {'name': '', 'time': now, 'duration': Duration(seconds: 0)};
// DateTime now = now;
DateTime hijri = now;
double percentage = 0;
bool isAfterIsha = false;

PrayersClass defaultPrayers = PrayersClass(
  prayersList,
  previous,
  current,
  next,
  countUp,
  countDown,
  now,
  hijri,
  percentage,
  isAfterIsha,
);
