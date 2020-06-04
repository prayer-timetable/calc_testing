// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DataStore on DataBase, Store {
  final _$dayAtom = Atom(name: 'DataBase.day');

  @override
  DateTime get day {
    _$dayAtom.reportRead();
    return super.day;
  }

  @override
  set day(DateTime value) {
    _$dayAtom.reportWrite(value, super.day, () {
      super.day = value;
    });
  }

  final _$latitudeAtom = Atom(name: 'DataBase.latitude');

  @override
  double get latitude {
    _$latitudeAtom.reportRead();
    return super.latitude;
  }

  @override
  set latitude(double value) {
    _$latitudeAtom.reportWrite(value, super.latitude, () {
      super.latitude = value;
    });
  }

  final _$longitudeAtom = Atom(name: 'DataBase.longitude');

  @override
  double get longitude {
    _$longitudeAtom.reportRead();
    return super.longitude;
  }

  @override
  set longitude(double value) {
    _$longitudeAtom.reportWrite(value, super.longitude, () {
      super.longitude = value;
    });
  }

  final _$altitudeAtom = Atom(name: 'DataBase.altitude');

  @override
  double get altitude {
    _$altitudeAtom.reportRead();
    return super.altitude;
  }

  @override
  set altitude(double value) {
    _$altitudeAtom.reportWrite(value, super.altitude, () {
      super.altitude = value;
    });
  }

  final _$timezoneAtom = Atom(name: 'DataBase.timezone');

  @override
  int get timezone {
    _$timezoneAtom.reportRead();
    return super.timezone;
  }

  @override
  set timezone(int value) {
    _$timezoneAtom.reportWrite(value, super.timezone, () {
      super.timezone = value;
    });
  }

  final _$fajrAngleAtom = Atom(name: 'DataBase.fajrAngle');

  @override
  double get fajrAngle {
    _$fajrAngleAtom.reportRead();
    return super.fajrAngle;
  }

  @override
  set fajrAngle(double value) {
    _$fajrAngleAtom.reportWrite(value, super.fajrAngle, () {
      super.fajrAngle = value;
    });
  }

  final _$ishaAngleAtom = Atom(name: 'DataBase.ishaAngle');

  @override
  double get ishaAngle {
    _$ishaAngleAtom.reportRead();
    return super.ishaAngle;
  }

  @override
  set ishaAngle(double value) {
    _$ishaAngleAtom.reportWrite(value, super.ishaAngle, () {
      super.ishaAngle = value;
    });
  }

  final _$getDayAsyncAction = AsyncAction('DataBase.getDay');

  @override
  Future getDay() {
    return _$getDayAsyncAction.run(() => super.getDay());
  }

  final _$getLatitudeAsyncAction = AsyncAction('DataBase.getLatitude');

  @override
  Future getLatitude() {
    return _$getLatitudeAsyncAction.run(() => super.getLatitude());
  }

  final _$getLongitudeAsyncAction = AsyncAction('DataBase.getLongitude');

  @override
  Future getLongitude() {
    return _$getLongitudeAsyncAction.run(() => super.getLongitude());
  }

  final _$getAltitudeAsyncAction = AsyncAction('DataBase.getAltitude');

  @override
  Future getAltitude() {
    return _$getAltitudeAsyncAction.run(() => super.getAltitude());
  }

  final _$getTimezoneAsyncAction = AsyncAction('DataBase.getTimezone');

  @override
  Future getTimezone() {
    return _$getTimezoneAsyncAction.run(() => super.getTimezone());
  }

  final _$getFajrAngleAsyncAction = AsyncAction('DataBase.getFajrAngle');

  @override
  Future getFajrAngle() {
    return _$getFajrAngleAsyncAction.run(() => super.getFajrAngle());
  }

  final _$getIshaAngleAsyncAction = AsyncAction('DataBase.getIshaAngle');

  @override
  Future getIshaAngle() {
    return _$getIshaAngleAsyncAction.run(() => super.getIshaAngle());
  }

  final _$setDayAsyncAction = AsyncAction('DataBase.setDay');

  @override
  Future setDay(dynamic newdata) {
    return _$setDayAsyncAction.run(() => super.setDay(newdata));
  }

  final _$setLatitudeAsyncAction = AsyncAction('DataBase.setLatitude');

  @override
  Future setLatitude(dynamic newdata) {
    return _$setLatitudeAsyncAction.run(() => super.setLatitude(newdata));
  }

  final _$setLongitudeAsyncAction = AsyncAction('DataBase.setLongitude');

  @override
  Future setLongitude(dynamic newdata) {
    return _$setLongitudeAsyncAction.run(() => super.setLongitude(newdata));
  }

  final _$setAltitudeAsyncAction = AsyncAction('DataBase.setAltitude');

  @override
  Future setAltitude(dynamic newdata) {
    return _$setAltitudeAsyncAction.run(() => super.setAltitude(newdata));
  }

  final _$setTimezoneAsyncAction = AsyncAction('DataBase.setTimezone');

  @override
  Future setTimezone(dynamic newdata) {
    return _$setTimezoneAsyncAction.run(() => super.setTimezone(newdata));
  }

  final _$setFajrAngleAsyncAction = AsyncAction('DataBase.setFajrAngle');

  @override
  Future setFajrAngle(dynamic newdata) {
    return _$setFajrAngleAsyncAction.run(() => super.setFajrAngle(newdata));
  }

  final _$setIshaAngleAsyncAction = AsyncAction('DataBase.setIshaAngle');

  @override
  Future setIshaAngle(dynamic newdata) {
    return _$setIshaAngleAsyncAction.run(() => super.setIshaAngle(newdata));
  }

  @override
  String toString() {
    return '''
day: ${day},
latitude: ${latitude},
longitude: ${longitude},
altitude: ${altitude},
timezone: ${timezone},
fajrAngle: ${fajrAngle},
ishaAngle: ${ishaAngle}
    ''';
  }
}
