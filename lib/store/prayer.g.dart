// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PrayerStore on PrayerStoreBase, Store {
  final _$valueAtom = Atom(name: 'PrayerStoreBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$prayersListAtom = Atom(name: 'PrayerStoreBase.prayersList');

  @override
  List<Prayer> get prayersList {
    _$prayersListAtom.reportRead();
    return super.prayersList;
  }

  @override
  set prayersList(List<Prayer> value) {
    _$prayersListAtom.reportWrite(value, super.prayersList, () {
      super.prayersList = value;
    });
  }

  final _$stringsAtom = Atom(name: 'PrayerStoreBase.strings');

  @override
  Strings get strings {
    _$stringsAtom.reportRead();
    return super.strings;
  }

  @override
  set strings(Strings value) {
    _$stringsAtom.reportWrite(value, super.strings, () {
      super.strings = value;
    });
  }

  final _$prayerLoadedAtom = Atom(name: 'PrayerStoreBase.prayerLoaded');

  @override
  bool get prayerLoaded {
    _$prayerLoadedAtom.reportRead();
    return super.prayerLoaded;
  }

  @override
  set prayerLoaded(bool value) {
    _$prayerLoadedAtom.reportWrite(value, super.prayerLoaded, () {
      super.prayerLoaded = value;
    });
  }

  final _$countownModeAtom = Atom(name: 'PrayerStoreBase.countownMode');

  @override
  bool get countownMode {
    _$countownModeAtom.reportRead();
    return super.countownMode;
  }

  @override
  set countownMode(bool value) {
    _$countownModeAtom.reportWrite(value, super.countownMode, () {
      super.countownMode = value;
    });
  }

  final _$countdownDeltaAtom = Atom(name: 'PrayerStoreBase.countdownDelta');

  @override
  int get countdownDelta {
    _$countdownDeltaAtom.reportRead();
    return super.countdownDelta;
  }

  @override
  set countdownDelta(int value) {
    _$countdownDeltaAtom.reportWrite(value, super.countdownDelta, () {
      super.countdownDelta = value;
    });
  }

  final _$countupDeltaAtom = Atom(name: 'PrayerStoreBase.countupDelta');

  @override
  int get countupDelta {
    _$countupDeltaAtom.reportRead();
    return super.countupDelta;
  }

  @override
  set countupDelta(int value) {
    _$countupDeltaAtom.reportWrite(value, super.countupDelta, () {
      super.countupDelta = value;
    });
  }

  final _$hijriOffsetAtom = Atom(name: 'PrayerStoreBase.hijriOffset');

  @override
  int get hijriOffset {
    _$hijriOffsetAtom.reportRead();
    return super.hijriOffset;
  }

  @override
  set hijriOffset(int value) {
    _$hijriOffsetAtom.reportWrite(value, super.hijriOffset, () {
      super.hijriOffset = value;
    });
  }

  final _$isAfterIshaAtom = Atom(name: 'PrayerStoreBase.isAfterIsha');

  @override
  bool get isAfterIsha {
    _$isAfterIshaAtom.reportRead();
    return super.isAfterIsha;
  }

  @override
  set isAfterIsha(bool value) {
    _$isAfterIshaAtom.reportWrite(value, super.isAfterIsha, () {
      super.isAfterIsha = value;
    });
  }

  final _$percentageAtom = Atom(name: 'PrayerStoreBase.percentage');

  @override
  double get percentage {
    _$percentageAtom.reportRead();
    return super.percentage;
  }

  @override
  set percentage(double value) {
    _$percentageAtom.reportWrite(value, super.percentage, () {
      super.percentage = value;
    });
  }

  final _$currentAtom = Atom(name: 'PrayerStoreBase.current');

  @override
  Prayer get current {
    _$currentAtom.reportRead();
    return super.current;
  }

  @override
  set current(Prayer value) {
    _$currentAtom.reportWrite(value, super.current, () {
      super.current = value;
    });
  }

  final _$methodAtom = Atom(name: 'PrayerStoreBase.method');

  @override
  bool get method {
    _$methodAtom.reportRead();
    return super.method;
  }

  @override
  set method(bool value) {
    _$methodAtom.reportWrite(value, super.method, () {
      super.method = value;
    });
  }

  final _$nextIdAtom = Atom(name: 'PrayerStoreBase.nextId');

  @override
  int get nextId {
    _$nextIdAtom.reportRead();
    return super.nextId;
  }

  @override
  set nextId(int value) {
    _$nextIdAtom.reportWrite(value, super.nextId, () {
      super.nextId = value;
    });
  }

  final _$getMethodAsyncAction = AsyncAction('PrayerStoreBase.getMethod');

  @override
  Future getMethod() {
    return _$getMethodAsyncAction.run(() => super.getMethod());
  }

  final _$setCountdownModeAsyncAction =
      AsyncAction('PrayerStoreBase.setCountdownMode');

  @override
  Future setCountdownMode(dynamic mode) {
    return _$setCountdownModeAsyncAction
        .run(() => super.setCountdownMode(mode));
  }

  final _$PrayerStoreBaseActionController =
      ActionController(name: 'PrayerStoreBase');

  @override
  dynamic switchMethod(bool isOn) {
    final _$actionInfo = _$PrayerStoreBaseActionController.startAction(
        name: 'PrayerStoreBase.switchMethod');
    try {
      return super.switchMethod(isOn);
    } finally {
      _$PrayerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getPrayer(int sec) {
    final _$actionInfo = _$PrayerStoreBaseActionController.startAction(
        name: 'PrayerStoreBase.getPrayer');
    try {
      return super.getPrayer(sec);
    } finally {
      _$PrayerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
prayersList: ${prayersList},
strings: ${strings},
prayerLoaded: ${prayerLoaded},
countownMode: ${countownMode},
countdownDelta: ${countdownDelta},
countupDelta: ${countupDelta},
hijriOffset: ${hijriOffset},
isAfterIsha: ${isAfterIsha},
percentage: ${percentage},
current: ${current},
method: ${method},
nextId: ${nextId}
    ''';
  }
}
