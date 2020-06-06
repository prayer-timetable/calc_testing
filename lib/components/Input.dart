// import dart and flutter resources
import 'package:calc_testing/store/city.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'dart:math' as math;

// import package resources
import 'package:flutter_mobx/flutter_mobx.dart';

// import local package resources

// mobx
import 'package:calc_testing/store/data.dart';

class Input extends StatefulWidget {
  Input({Key key, this.title, this.lite}) : super(key: key);

  final String title;
  final bool lite;

  // Input({this.title, this.lite,});

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  // widget.title;

  final _amountValidator = RegExInputFormatter.withRegex(
      '^\$|^(0|([1-9][0-9]{0,}))(\\.[0-9]{0,})?\$');

  @override
  void initState() {
    super.initState();
    dataStore.load();
    // controllerLatitude.text = dataStore.latitude.toString();

    // Start listening to changes.
    // myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    // myController.dispose();
    super.dispose();
  }

  // _printLatestValue() {
  //   print("Second text field: ${myController.text}");
  // }

  @override
  Widget build(BuildContext context) {
    // double vh = MediaQuery.of(context).size.height / 100;

    return Observer(
      builder: (_) => Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // SizedBox(
            //   height: 24.0,
            // ),

            Container(
              width: 400,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: dataStore.controllerLatitude,
                        // controller: TextEditingController(
                        //     text: '${dataStore.latitude}'),
                        // maxLength: 10,
                        decoration: new InputDecoration(labelText: "Latitude"),
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        inputFormatters: [
                          _amountValidator,
                          // WhitelistingTextInputFormatter.digitsOnly,
                          // CustomRangeTextInputFormatter(),
                        ], // Only numbers can be entered
                        // onEditingComplete: () => print('koko'),
                        onEditingComplete: () {
                          FocusScope.of(context).nextFocus();
                          dataStore
                              .setLatitude(dataStore.controllerLatitude.text);
                          cityStore.setCityValue('');
                        },
                        // onSubmitted: (text) => dataStore.setLatitude(text),
                        // onChanged: (text) {
                        //   dataStore.setLatitude(text);
                        // },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: dataStore.controllerLongitude,
                        decoration: new InputDecoration(labelText: "Longitude"),
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        inputFormatters: [
                          _amountValidator,
                          // WhitelistingTextInputFormatter.digitsOnly,
                          // CustomRangeTextInputFormatter(),
                        ], // Only numbers can be entered
                        // onEditingComplete: () => print('koko'),
                        onEditingComplete: () {
                          FocusScope.of(context).nextFocus();
                          dataStore
                              .setLongitude(dataStore.controllerLongitude.text);
                          cityStore.setCityValue('');
                        },
                        // onSubmitted: (text) => dataStore.setLongitude(text),
                        // onChanged: (text) {
                        //   dataStore.setLatitude(text);
                        // },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: 400,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: dataStore.controllerAltitude,
                        decoration: new InputDecoration(labelText: "Altitude"),
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        inputFormatters: [
                          _amountValidator,
                          // WhitelistingTextInputFormatter.digitsOnly,
                          // CustomRangeTextInputFormatter(),
                        ], // Only numbers can be entered
                        onEditingComplete: () {
                          FocusScope.of(context).nextFocus();
                          dataStore
                              .setAltitude(dataStore.controllerAltitude.text);
                          cityStore.setCityValue('');
                        },
                        // onSubmitted: (text) => dataStore.setAltitude(text),
                        // onChanged: (text) {
                        //   dataStore.setLatitude(text);
                        // },
                      ),
                    ),
                  ),
                  // timezone
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: dataStore.controllerTimezone,
                        decoration: new InputDecoration(labelText: "Timezone"),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          WhitelistingTextInputFormatter.digitsOnly,
                          // CustomRangeTextInputFormatter(),
                        ], // Only numbers can be entered
                        // onEditingComplete: () => print('koko'),
                        onEditingComplete: () {
                          FocusScope.of(context).nextFocus();
                          dataStore
                              .setTimezone(dataStore.controllerTimezone.text);
                          cityStore.setCityValue('');
                        },
                        // onSubmitted: (text) => dataStore.setTimezone(text),
                        // onChanged: (text) {
                        //   dataStore.setLatitude(text);
                        // },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: 400,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: dataStore.controllerFajrAngle,
                        decoration:
                            new InputDecoration(labelText: "Fajr angle"),
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        inputFormatters: [
                          _amountValidator,
                          // WhitelistingTextInputFormatter.digitsOnly,
                          // CustomRangeTextInputFormatter(),
                        ], // Only numbers can be enterednly numbers can be entered
                        onEditingComplete: () {
                          FocusScope.of(context).nextFocus();
                          dataStore
                              .setFajrAngle(dataStore.controllerFajrAngle.text);
                          cityStore.setCityValue('');
                        },
                        // onSubmitted: (text) => dataStore.setFajrAngle(text),
                        // onChanged: (text) {
                        //   dataStore.setLatitude(text);
                        // },
                      ),
                    ),
                  ),
                  // ishaAngle
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: dataStore.controllerIshaAngle,
                        decoration:
                            new InputDecoration(labelText: "Isha angle"),
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        inputFormatters: [
                          _amountValidator,
                          // WhitelistingTextInputFormatter.digitsOnly,
                          // CustomRangeTextInputFormatter(),
                        ], // Only numbers can be entered// Only numbers can be entered
                        // onEditingComplete: () => print('koko'),
                        onEditingComplete: () {
                          FocusScope.of(context).unfocus();
                          dataStore
                              .setIshaAngle(dataStore.controllerIshaAngle.text);
                          cityStore.setCityValue('');
                        },
                        // onSubmitted: (text) {
                        //   dataStore.setIshaAngle(text);
                        //   // print('new value $text');
                        //   cityStore.setCityValue('');
                        // },

                        // onChanged: (text) {
                        //   dataStore.setLatitude(text);
                        // },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomRangeTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text == '')
      return TextEditingValue();
    else if (int.parse(newValue.text) < 1)
      return TextEditingValue().copyWith(text: '1');

    return int.parse(newValue.text) > 20
        ? TextEditingValue().copyWith(text: '20')
        : newValue;
  }
}

class RegExInputFormatter implements TextInputFormatter {
  final RegExp _regExp;

  RegExInputFormatter._(this._regExp);

  factory RegExInputFormatter.withRegex(String regexString) {
    try {
      final regex = RegExp(regexString);
      return RegExInputFormatter._(regex);
    } catch (e) {
      // Something not right with regex string.
      assert(false, e.toString());
      return null;
    }
  }

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final oldValueValid = _isValid(oldValue.text);
    final newValueValid = _isValid(newValue.text);
    if (oldValueValid && !newValueValid) {
      return oldValue;
    }
    return newValue;
  }

  bool _isValid(String value) {
    try {
      final matches = _regExp.allMatches(value);
      for (Match match in matches) {
        if (match.start == 0 && match.end == value.length) {
          return true;
        }
      }
      return false;
    } catch (e) {
      // Invalid regex
      assert(false, e.toString());
      return true;
    }
  }
}
