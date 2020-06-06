import 'dart:io' show Platform;
import 'package:location/location.dart';

// import package resources
import 'package:mobx/mobx.dart';
import 'package:hive/hive.dart';

import 'package:calc_testing/store/prayer.dart';
import 'package:calc_testing/store/city.dart';

part 'data.g.dart';

class DataStore = DataBase with _$DataStore;
final dataStore = DataStore();
final prefs = Hive.box('prefs');

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
      case 'auto':
        checkLocation();
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

  // @action
  checkLocation() async {
    // location
    Location location = new Location();
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();
    // print('before');
    // final String _currentTimeZone =
    //     await FlutterNativeTimezone.getLocalTimezone();
    // // print(_locationData.time);
    // print(_currentTimeZone);
    // print('after');

    // print(_locationData.altitude);
    int timeZone = dataStore.day.toUtc().timeZoneOffset.inHours;

    dataStore.setLatitude(_locationData.latitude.toString());
    dataStore.setLongitude(_locationData.longitude.toString());
    dataStore.setAltitude(_locationData.altitude.toString());
    dataStore.setTimezone(timeZone);
  }

  @action
  save() {
    prefs.put('longitude', longitude);
    prefs.put('latitude', latitude);
    prefs.put('altitude', altitude);
    prefs.put('timezone', timezone);
    prefs.put('ishaAngle', ishaAngle);
    prefs.put('fajrAngle', fajrAngle);
    prefs.put('city', cityStore.cityValue);
  }

  @action
  load() {
    // print(prefs.get('longitude'));
    longitude = prefs.get('longitude') ?? longitude;
    latitude = prefs.get('latitude') ?? latitude;
    altitude = prefs.get('altitude') ?? altitude;
    timezone = prefs.get('timezone') ?? timezone;
    ishaAngle = prefs.get('ishaAngle') ?? ishaAngle;
    fajrAngle = prefs.get('fajrAngle') ?? fajrAngle;
    cityStore.getCityValue();
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
