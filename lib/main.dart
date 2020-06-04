library calc_testing;

import 'package:flutter/material.dart';
import 'dart:async';
// import 'dart:convert';
// // import 'dart:ui';
// import 'dart:io' show Platform;
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import package resources
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

// mobx
import 'package:calc_testing/store/data.dart';

// import components
import 'package:calc_testing/components/Input.dart';
import 'package:calc_testing/components/Data.dart';
import 'package:calc_testing/components/Prayers.dart';

// local
import 'package:calc_testing/theme/theme.dart';

// parts and their imports
part 'package:calc_testing/parts/main.dart';
// part 'package:prayer_times/components/parts/workmanager.dart';
part 'package:calc_testing/parts/hive.dart';

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Prayer Calc Sandbox';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData(),
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();
  Timer tickTimer;

  @override
  void initState() {
    super.initState();

    tickTimer =
        Timer.periodic(Duration(seconds: 1), (Timer t) => dataStore.tick());
  }

  @override
  void dispose() {
    super.dispose();
    tickTimer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Input(), Data(), Prayers()],
    );
  }

  // ******************
  // WIDGETS
  // ******************
  Widget form() => Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your email',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formKey.currentState.validate()) {
                    // Process data.
                  }
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      );
}
