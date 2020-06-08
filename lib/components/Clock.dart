// import dart and flutter resources
import 'package:flutter/material.dart';

// import package resources
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

// import local package resources
import 'package:calc_testing/theme/colors.dart';

// mobx
import 'package:calc_testing/store/prayer.dart';
import 'package:calc_testing/store/data.dart';

class Clock extends StatefulWidget {
  Clock({Key key, this.title, this.lite}) : super(key: key);

  final String title;
  final bool lite;

  // Clock({this.title, this.lite,});

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // double vh = MediaQuery.of(context).size.height / 100;

    return Observer(
      builder: (_) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 24.0,
          ),
          Text(
            '${prayerStore.strings.now}',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline6
                .apply(color: colorText, fontSizeDelta: 0.0),
          ),
          Container(
            color: colorHighlight,
            height: 1,
            width: 220,
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${prayerStore.strings.date}',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .apply(color: colorText, fontSizeDelta: 0.0)),
              SizedBox(width: 8),
              Container(
                color: colorPrimary,
                width: 8,
                height: 8,
              ),
              SizedBox(width: 8),
              Text('${prayerStore.strings.hijri}',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .apply(color: colorText, fontSizeDelta: 0.0)),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          buttons(),
        ],
      ),
    );
  }

  Widget buttons() => Container(
        width: 400,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RaisedButton(
                color: colorTextLight,
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(2000, 1, 1),
                      maxTime: DateTime(2030, 12, 31), onChanged: (date) {
                    print('change $date');
                  }, onConfirm: (date) {
                    print('confirm $date');
                    dataStore.setDay(DateTime(
                        date.year,
                        date.month,
                        date.day,
                        dataStore.day.hour,
                        dataStore.day.minute,
                        dataStore.day.second));
                  }, currentTime: dataStore.now, locale: LocaleType.en);
                },
                child: Text(
                  'Izaberi datum',
                  style: TextStyle(color: colorPrimary),
                )),
            RaisedButton(
                color: colorTextLight,
                onPressed: () {
                  DatePicker.showTimePicker(context, showTitleActions: true,
                      onChanged: (time) {
                    print('change $time');
                  }, onConfirm: (time) {
                    print('confirm $time');
                    dataStore.setDay(DateTime.utc(
                        dataStore.now.year,
                        dataStore.now.month,
                        dataStore.now.day,
                        time.hour,
                        time.minute,
                        time.second));
                  }, currentTime: dataStore.now, locale: LocaleType.en);
                },
                child: Text(
                  'Izaberi vrijeme',
                  style: TextStyle(color: colorPrimary),
                )),
            RaisedButton(
              color: colorTextLight,
              onPressed: () => dataStore.setDay(DateTime.now()),
              child: Text(
                'Reset',
                style: TextStyle(color: colorPrimary),
              ),
            )
          ],
        ),
      );
}
