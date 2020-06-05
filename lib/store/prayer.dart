// import package resources
import 'package:mobx/mobx.dart';
import 'package:prayer_calc/prayer_calc.dart';
import 'package:hive/hive.dart';
import 'package:date_format/date_format.dart';

// import 'package:oktoast/oktoast.dart';

// import local package resources
// import 'package:calc_testing/store/func/prayerCalc.dart';
import 'package:calc_testing/store/defaultState.dart';
import 'package:calc_testing/helpers/func.dart';
import 'package:hijri/umm_alqura_calendar.dart';

// mobx
import 'package:calc_testing/store/data.dart';
import 'package:calc_testing/helpers/prayerClasses.dart';
import 'package:calc_testing/helpers/language.dart';
import 'package:calc_testing/helpers/bosnianLocale.dart';

part 'prayer.g.dart';

class PrayerStore = PrayerStoreBase with _$PrayerStore;
final prayerStore = PrayerStore();

abstract class PrayerStoreBase with Store {
  @observable
  int value = 0;

  @observable
  List<Prayer> prayersList = defaultPrayers.prayersList;

  @observable
  Strings strings = defaultStrings;

  @observable
  bool prayerLoaded = false;

  @observable
  bool countownMode = true;

  @observable
  int countdownDelta = 3600;

  @observable
  int countupDelta = 1;

  @observable
  int hijriOffset = 0;

  @observable
  bool isAfterIsha = false;

  @observable
  double percentage = 0;

  @observable
  Prayer current;

  @observable
  bool method = true;

  @observable
  int nextId = 0;

  @action
  switchMethod(bool isOn) {
    // isOn = !isOn;
    // print(isOn);

    method = !method;
    // showToast(
    //   'Trenutno samo za Sarajevo',
    // );

    var prefs = Hive.box('prefs');
    prefs.put('method', method);

    // print(method);
  }

  @action
  getMethod() async {
    var prefs = Hive.box('prefs');
    method = prefs.get('method') != null ? prefs.get('method') : false;
  }

  @action
  void getPrayer() {
    // var location;

    // CALC
    // Sarajevo
    // if (prayerStore.method) {
    //   // double latS = 43.8563;
    //   // double longS = 18.4131;
    //   // double altitudeS = 518;
    //   // double angleS = 14.6;
    //   // int timezoneS = 1;

    //   location = new PrayerCalc(dataStore.timezone, dataStore.latitude,
    //       dataStore.longitude, dataStore.altitude, dataStore.fajrAngle,
    //       ishaAngle: dataStore.ishaAngle);
    // } else {
    //   // TIMETABLE

    // }
    double _lat = dataStore.latitude ?? 43.8563;
    double _long = dataStore.longitude ?? 18.4131;
    double _altitude = dataStore.altitude ?? 518;
    double _angle = dataStore.fajrAngle ?? 14.6;
    double _ishaAngle = dataStore.ishaAngle ?? 14.6;
    int _timezone = dataStore.timezone ?? 1;

    PrayerCalc location = new PrayerCalc(
      _timezone,
      _lat,
      _long,
      _altitude,
      _angle,
      ishaAngle: _ishaAngle,
      year: dataStore.day.year,
      month: dataStore.day.month,
      day: dataStore.day.day,
      hour: dataStore.day.hour,
      minute: dataStore.day.minute,
      second: dataStore.day.second,
      time: dataStore.day,
      showSeconds: true,
    );
    // print(location);

    // // COMMON
    var _prayers = location.durations.isAfterIsha
        ? location.prayers.next
        : location.prayers.current;

    var _hDate = new UmmAlquraCalendar.fromDate(location.durations.nowLocal);

    int _hijriMonth = int.parse(_hDate.toFormat("m")) - 1;

    // print(location.durations.nowLocal);

    Strings _strings = new Strings(
      now: '${formatDate(location.durations.nowLocal, [H, ':', nn, ':', ss])}',
      date: '${formatDate(
        location.durations.nowLocal,
        [d, '. ', MM, ' ', yyyy, '.'],
        locale: BosnianLocale(),
      )}', // DD, ' ', for day of week
      hijri:
          '${_hDate.toFormat("d.")} ${namesHijri[_hijriMonth]} ${_hDate.toFormat("yyyy.")}',
      hijriMonth: '${_hDate.toFormat("MMMM")}',
      prayers: [
        formatDate(_prayers.dawn, [H, ':', nn]),
        formatDate(_prayers.sunrise, [H, ':', nn]),
        formatDate(_prayers.midday, [H, ':', nn]),
        formatDate(_prayers.afternoon, [H, ':', nn]),
        formatDate(_prayers.sunset, [H, ':', nn]),
        formatDate(_prayers.dusk, [H, ':', nn]),
      ],
      prayersSeconds: [
        formatDate(_prayers.dawn, [ss]),
        formatDate(_prayers.sunrise, [ss]),
        formatDate(_prayers.midday, [ss]),
        formatDate(_prayers.afternoon, [ss]),
        formatDate(_prayers.sunset, [ss]),
        formatDate(_prayers.dusk, [ss]),
      ],
      countdownName:
          '${capitalise(namesPrayer[location.durations.currentId < 5 ? location.durations.currentId + 1 : 0])}',
      countdownTime:
          '${printDuration(location.durations.countDown, adjust: 1)}',
      countupName: '${capitalise(namesPrayer[location.durations.currentId])}',
      countupNameFrom: '${namesPrayerFrom[location.durations.currentId]}',
      // location.durations.currentId
      countupTime: '${printDuration(location.durations.countUp)}',
      current:
          '${capitalise(namesPrayer[location.durations.currentId])} ${formatDate(location.durations.current, [
        H,
        ':',
        nn
      ])}',
      midnight: formatDate(location.sunnah.midnight, [H, ':', nn]),
      lastThird: formatDate(location.sunnah.lastThird, [H, ':', nn]),
    );

    strings = _strings;
    percentage = location.durations.percentage;

    nextId = location.durations.currentId == 5
        ? 0
        : location.durations.currentId + 1;
  }

  @action
  setCountdownMode(mode) async {
    countownMode = mode;
  }
}
