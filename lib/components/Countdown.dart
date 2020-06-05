// import dart and flutter resources
import 'package:flutter/material.dart';

// import package resources
import 'package:flutter_mobx/flutter_mobx.dart';

// import local package resources
import 'package:calc_testing/helpers/func.dart';
import 'package:calc_testing/theme/colors.dart';
import 'package:calc_testing/helpers/language.dart';

// import components

// mobx
import 'package:calc_testing/store/prayer.dart';

class Countdown extends StatefulWidget {
  Countdown({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CountdownState createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> with TickerProviderStateMixin {
  // Animation<int> animation;
  // Animation curve;
  // AnimationController animationController;

  @override
  void initState() {
    super.initState();
    // animationController = AnimationController(
    //     duration: const Duration(milliseconds: 3000), vsync: this);
    // curve =
    //     CurvedAnimation(parent: animationController, curve: Curves.easeInOut);
    // animation = IntTween(begin: 0, end: 100).animate(curve)
    //   ..addListener(() {
    //     setState(() {
    //       hepek = 0;
    //       // The state that has changed here is the animation object’s value.
    //     });
    //   });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;
    // animationController.forward();

    return Observer(
      builder: (_) => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            // color: colorWhiteTrans,
            // width: fullWidth,
            // height: 140.0,
            child: Stack(alignment: Alignment.bottomLeft, children: [
              Container(
                  height: 2,
                  // width: 100,
                  width: fullWidth,
                  // width: MediaQuery.of(context).size.width,
                  color: colorPrimaryTrans),
              Container(
                  height: 2,
                  // width: 100,
                  width:
                      round2Decimals(prayerStore.percentage) / 100 * fullWidth,
                  // width: MediaQuery.of(context).size.width,
                  color: colorPrimary),
              ButtonTheme(
                minWidth: 100,
                height: 70,
                child: FlatButton(
                    onPressed: () {
                      prayerStore.setCountdownMode(!prayerStore.countownMode);
                      // Navigator.pop(context);
                      // print('pressed');
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          prayerStore.countownMode
                              ? '${prayerStore.strings.countdownName} ${namesRel[0]}'
                              : '${capitalise(namesRel[1])} ${prayerStore.strings.countupNameFrom}',
                          style: Theme.of(context).textTheme.headline4.apply(
                              // color: colorWhiteTrans,
                              fontWeightDelta: 0,
                              fontSizeDelta: 0.0),
                        ),
                        SizedBox(width: 8),
                        Text(
                          prayerStore.countownMode
                              ? '${prayerStore.strings.countdownTime}'
                              : '${prayerStore.strings.countupTime}',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .apply(fontWeightDelta: 0, fontSizeDelta: 0.0),
                        ),
                      ],
                    )),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
