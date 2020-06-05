import 'dart:io' show Platform;

// import package resources
import 'package:mobx/mobx.dart';
import 'package:hive/hive.dart';

import 'package:calc_testing/store/prayer.dart';

part 'data.g.dart';

class DataStore = DataBase with _$DataStore;
final dataStore = DataStore();

abstract class DataBase with Store {
  @observable
  DateTime day = DateTime.now();

  @observable
  double latitude = 43.8563;

  @observable
  double longitude = 18.4131;

  @observable
  double altitude = 518;

  @observable
  int timezone = 1;

  @observable
  double fajrAngle = 14.6;

  @observable
  double ishaAngle = 14.6;

  @action
  tick() {
    day = day.add(Duration(seconds: 1));
    prayerStore.getPrayer();
    // print('${prayerStore.current}');
  }

  @action
  preset(value) {
    switch (value) {
      case 'sarajevo':
        latitude = 43.8563;
        longitude = 18.4131;
        altitude = 518;
        timezone = 1;
        fajrAngle = 14.6;
        ishaAngle = 14.6;
        break;
      case 'dublin':
        latitude = 53.3046593;
        longitude = -6.2344076;
        altitude = 85;
        timezone = 0;
        fajrAngle = 12.35;
        ishaAngle = 11.75;
        break;
      default:
        latitude = 43.8563;
        longitude = 18.4131;
        altitude = 518;
        timezone = 1;
        fajrAngle = 14.6;
        ishaAngle = 14.6;
    }
  }

  // **********
  // GET
  @action
  getDay() async {
    var prefs = Hive.box('prefs');
    day = prefs.get('day') ?? 0;
  }

  @action
  getLatitude() async {
    var prefs = Hive.box('prefs');
    latitude = prefs.get('latitude') ?? 0;
  }

  @action
  getLongitude() async {
    var prefs = Hive.box('prefs');
    longitude = prefs.get('longitude') ?? 0;
  }

  @action
  getAltitude() async {
    var prefs = Hive.box('prefs');
    altitude = prefs.get('altitude') ?? 0;
  }

  @action
  getTimezone() async {
    var prefs = Hive.box('prefs');
    timezone = prefs.get('timezone') ?? 0;
  }

  @action
  getFajrAngle() async {
    var prefs = Hive.box('prefs');
    fajrAngle = prefs.get('fajrAngle') ?? 0;
  }

  @action
  getIshaAngle() async {
    var prefs = Hive.box('prefs');
    ishaAngle = prefs.get('ishaAngle') ?? 0;
  }

  // **********
  // SET
  @action
  setDay(newdata) async {
    day = newdata;
    // var prefs = Hive.box('prefs');
    // prefs.put('day', newdata);
  }

  @action
  setLatitude(newdata) async {
    latitude = double.parse(newdata);
    // var prefs = Hive.box('prefs');
    // prefs.put('latitude', newdata);
  }

  @action
  setLongitude(newdata) async {
    longitude = double.parse(newdata);
    // var prefs = Hive.box('prefs');
    // prefs.put('longitude', newdata);
  }

  @action
  setAltitude(newdata) async {
    altitude = double.parse(newdata);
    // var prefs = Hive.box('prefs');
    // prefs.put('altitude', newdata);
  }

  @action
  setTimezone(newdata) async {
    timezone = newdata;
    // var prefs = Hive.box('prefs');
    // prefs.put('timezone', newdata);
  }

  @action
  setFajrAngle(newdata) async {
    fajrAngle = double.parse(newdata);
    // var prefs = Hive.box('prefs');
    // prefs.put('fajrAngle', newdata);
  }

  @action
  setIshaAngle(newdata) async {
    ishaAngle = double.parse(newdata);
    // var prefs = Hive.box('prefs');
    // prefs.put('ishaAngle', newdata);
  }
}
