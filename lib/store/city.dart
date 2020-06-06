import 'package:flutter/material.dart';

// import package resources
import 'package:mobx/mobx.dart';
import 'package:hive/hive.dart';

part 'city.g.dart';

class CityStore = CityBase with _$CityStore;
final cityStore = CityStore();
final prefs = Hive.box('prefs');

final List<DropdownMenuItem> cities = [
  DropdownMenuItem(
    child: Text('Sarajevo'),
    value: 'sarajevo',
  ),
  DropdownMenuItem(
    child: Text('Dublin'),
    value: 'dublin',
  ),
  DropdownMenuItem(
    child: Text('Auto'),
    value: 'auto',
  ),
  // DropdownMenuItem(
  //   child: Text('Proizvoljno'),
  //   value: 'proizvoljno',
  // ),
];

abstract class CityBase with Store {
  @observable
  String cityValue = 'sarajevo';

  @action
  setCityValue(value) {
    cityValue = value;
  }

  @action
  getCityValue() {
    cityValue = prefs.get('city') ?? cityValue;
  }
}
