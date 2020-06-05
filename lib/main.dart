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
import 'package:calc_testing/store/prayer.dart';

// import components
import 'package:calc_testing/components/Input.dart';
import 'package:calc_testing/components/Data.dart';
import 'package:calc_testing/components/Prayers.dart';
import 'package:calc_testing/components/Clock.dart';
import 'package:calc_testing/components/Preset.dart';
import 'package:calc_testing/components/Countdown.dart';

// local
import 'package:calc_testing/theme/theme.dart';
import 'package:calc_testing/theme/colors.dart';

// parts and their imports
part 'package:calc_testing/parts/main.dart';
// part 'package:prayer_times/components/parts/workmanager.dart';
part 'package:calc_testing/parts/hive.dart';

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Vaktija Sandbox';

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
  Timer tickTimer;

  @override
  void initState() {
    super.initState();

    tickTimer =
        Timer.periodic(Duration(seconds: 1), (Timer t) => dataStore.tick());

    prayerStore.getPrayer();
  }

  @override
  void dispose() {
    super.dispose();
    tickTimer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Clock(),
          Divider(
            color: colorPrimary,
            height: 12,
            thickness: 2,
          ),
          Input(),
          Preset(),
          Divider(
            color: colorPrimary,
            height: 12,
            thickness: 2,
          ),
          Data(),
          // SizedBox(height: 16.0),
          Divider(
            color: colorPrimary,
            height: 12,
            thickness: 2,
          ),
          Prayers(),
          Countdown(),
        ],
      ),
    );
  }
}
