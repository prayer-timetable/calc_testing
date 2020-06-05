// import dart and flutter resources
import 'package:flutter/material.dart';

// import package resources
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:date_format/date_format.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';
import 'package:location/location.dart';

// import local package resources

// mobx
import 'package:calc_testing/store/data.dart';

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
  final List<DropdownMenuItem> items = [
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
  ];
  String selectedValue;

  @override
  void initState() {
    super.initState();
    // Future.delayed(const Duration(milliseconds: 1000), () {
    //   dataStore.checkLocation();
    // });

    // dataStore.getAltitude();
  }

  @override
  void dispose() {
    super.dispose();
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
            SearchableDropdown.single(
              items: items,
              value: 'sarajevo',
              hint: "Proizvoljno",
              searchHint: "Izaberite",
              onChanged: (value) {
                dataStore.preset(value);
                print(value);
              },
              isExpanded: true,
            ),
          ],
        ),
      ),
    );
  }
}
