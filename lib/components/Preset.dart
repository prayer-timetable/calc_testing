// import dart and flutter resources
import 'package:flutter/material.dart';

// import package resources
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:search_choices/search_choices.dart';

// import local package resources

// mobx
import 'package:calc_testing/store/data.dart';
import 'package:calc_testing/store/city.dart';

import 'package:calc_testing/theme/colors.dart';

class Preset extends StatefulWidget {
  Preset({Key key, this.title, this.lite}) : super(key: key);

  final String title;
  final bool lite;

  // Preset({this.title, this.lite,});

  @override
  _PresetState createState() => _PresetState();
}

class _PresetState extends State<Preset> {
  // dropdown

  String _saveString;
  bool _isButtonDisabled;

  @override
  void initState() {
    super.initState();
    // Future.delayed(const Duration(milliseconds: 1000), () {
    //   dataStore.checkLocation();
    // });
    _saveString = 'Spasi';
    _isButtonDisabled = false;
    // dataStore.load();
    // dataStore.getAltitude();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _changeText() {
    setState(() {
      _isButtonDisabled = true;
      _saveString = 'Spašeno';
    });

    Future.delayed(const Duration(milliseconds: 2000), () {
      // animationController.forward();
      setState(() {
        _saveString = 'Spasi';
        _isButtonDisabled = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // double vh = MediaQuery.of(context).size.height / 100;
    // ExampleNumber selectedNumber;

    return Observer(
      builder: (_) => Container(
        padding: EdgeInsets.all(16.0),
        // width: MediaQuery.of(context).size.width,
        width: 400,
        // height: double.maxFinite,
        // color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // SizedBox(
            //   height: 24.0,
            // ),
            Text('Preset:', style: Theme.of(context).textTheme.headline2),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: SearchChoices.single(
                    items: cities,
                    // doneButton: Text('koko'),
                    // underline: Divider(
                    //   color: colorPrimary,
                    //   height: 1,
                    //   thickness: 1,
                    // ),
                    value: cityStore.cityValue,
                    hint: "Proizvoljno",
                    searchHint: "Izaberite",
                    onChanged: (value) {
                      dataStore.preset(value);
                      cityStore.setCityValue(value);
                      print(value);
                    },
                    closeButton: "Zatvori",
                    isExpanded: true,
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: RaisedButton(
                        color: _isButtonDisabled
                            ? colorBackground
                            : colorTextLight,
                        onPressed: () {
                          if (!_isButtonDisabled) dataStore.save();
                          if (!_isButtonDisabled) _changeText();
                        },
                        child: Text(_saveString)))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
