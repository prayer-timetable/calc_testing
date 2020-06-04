// import dart and flutter resources
import 'package:flutter/material.dart';

// import package resources
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:date_format/date_format.dart';

// import local package resources

// mobx
import 'package:calc_testing/store/data.dart';

class Data extends StatefulWidget {
  Data({Key key, this.title, this.lite}) : super(key: key);

  final String title;
  final bool lite;

  // Data({this.title, this.lite,});

  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  // widget.title;

  @override
  void initState() {
    super.initState();

    dataStore.getAltitude();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // double vh = MediaQuery.of(context).size.height / 100;

    return Observer(
      builder: (_) => Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // SizedBox(
              //   height: 24.0,
              // ),
              Text('Current values:',
                  style: Theme.of(context).textTheme.headline5),
              Divider(color: Colors.black),
              Wrap(
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.start,
                verticalDirection: VerticalDirection.down,
                alignment: WrapAlignment.start,
                runAlignment: WrapAlignment.start,
                runSpacing: 16.0,
                spacing: 16.0,
                children: [
                  Text(
                    'Latitude: ${dataStore.latitude}',
                  ),
                  Text(
                    'Longitude: ${dataStore.longitude}',
                  ),
                  Text(
                    'Altitude: ${dataStore.altitude}',
                  ),
                  Text(
                    'Timezone: ${dataStore.timezone}',
                  ),
                  Text(
                    'Fajr angle: ${dataStore.fajrAngle}',
                  ),
                  Text(
                    'Isha angle: ${dataStore.ishaAngle}',
                  ),
                ],
              ),
              Divider(color: Colors.black),
              Text('${formatDate(dataStore.day, [d, ' ', MM, ' ', yyyy])}',
                  style: Theme.of(context).textTheme.headline5),
              Text('${formatDate(dataStore.day, [H, ':', mm, ':', ss])}',
                  style: Theme.of(context).textTheme.headline5),
            ],
          ),
        ),
      ),
    );
  }
}
