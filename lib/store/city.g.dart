// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CityStore on CityBase, Store {
  final _$cityValueAtom = Atom(name: 'CityBase.cityValue');

  @override
  String get cityValue {
    _$cityValueAtom.reportRead();
    return super.cityValue;
  }

  @override
  set cityValue(String value) {
    _$cityValueAtom.reportWrite(value, super.cityValue, () {
      super.cityValue = value;
    });
  }

  final _$CityBaseActionController = ActionController(name: 'CityBase');

  @override
  dynamic setCityValue(dynamic value) {
    final _$actionInfo =
        _$CityBaseActionController.startAction(name: 'CityBase.setCityValue');
    try {
      return super.setCityValue(value);
    } finally {
      _$CityBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getCityValue() {
    final _$actionInfo =
        _$CityBaseActionController.startAction(name: 'CityBase.getCityValue');
    try {
      return super.getCityValue();
    } finally {
      _$CityBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cityValue: ${cityValue}
    ''';
  }
}
