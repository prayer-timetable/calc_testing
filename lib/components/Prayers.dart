// part of app;
// import dart and flutter resources
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

// import package resources
import 'package:flutter_mobx/flutter_mobx.dart';

// import local package resources
import 'package:calc_testing/theme/colors.dart';
import 'package:calc_testing/helpers/language.dart';

// mobx
import 'package:calc_testing/store/prayer.dart';

class Prayers extends StatefulWidget {
  @override
  _PrayersState createState() => _PrayersState();
}

class _PrayersState extends State<Prayers> with TickerProviderStateMixin {
  double fontBodyAdjustment = 0;
  double fontDisplay2Adjustment = 0;
  double fontTitleAdjustment = 0;
  double paddingAdjustment = 0;
  double devicePixelRatio = 2.0;
  double sizeFactor = 1.0;
  AnimationController animationController;
  Animation<int> animation;
  Animation curve;
  AnimationController animationControllerPrayer;
  Animation curvePrayer;

  // final String key;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        duration: const Duration(milliseconds: 3000), vsync: this);

    curve =
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut);

    animation = IntTween(begin: 0, end: 100).animate(curve)
      ..addListener(() {
        setState(() {
          // The state that has changed here is the animation object’s value.
        });
      });

    animationControllerPrayer = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);

    curvePrayer = CurvedAnimation(
        parent: animationControllerPrayer, curve: Curves.easeInOut);

    Future.delayed(const Duration(milliseconds: 150), () {
      animationControllerPrayer.forward();
    });

    Future.delayed(const Duration(milliseconds: 150), () {
      animationController.forward();
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    animationControllerPrayer.dispose();
    super.dispose();
  }
  // @override
  // void didChangeDependencies() {
  //   print('changed');
  //       Future.delayed(const Duration(milliseconds: 1500), () {
  //     animated = true;
  //   });

  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    return prayerWidget();

    // prayerStore.prayerLoaded
    //     ? prayerWidget()
    //     : prayerWidgetPlaceholder());
    // widgetReturn;
  }

  Widget prayerWidget() {
    animationController.forward();
    // print('${ResponsiveWidgets.screenHeight}');

    return Observer(
      builder: (_) => FadeTransition(
        opacity: animationControllerPrayer != null
            ? animationControllerPrayer.drive(CurveTween(curve: Curves.easeIn))
            : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // Header
            Container(
              width: 400,
              height: 36,
              // color: colorPrimary,
              // height: 96.0,
              child: FadeTransition(
                  opacity: animationController
                      .drive(CurveTween(curve: Curves.fastOutSlowIn)),
                  child: prayerHeading()),
            ),
            // Prayers
            Container(
              // height: 400.h,
              color: colorPrimary,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  getPrayer(0),
                  getPrayer(1),
                  getPrayer(2),
                  getPrayer(3),
                  getPrayer(4),
                  getPrayer(5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getPrayer(int no) {
    return SlideTransition(
      position: Tween<Offset>(
              begin: Offset(no % 2 == 0 ? -1.0 : 1.0, 0.0), end: Offset.zero)
          .animate(curvePrayer),
      child: Container(
        width: 400,
        height: 48,
        color: prayerStore.nextId == no ? colorHighlight : colorSecondary,
        padding: EdgeInsets.symmetric(horizontal: 16),
        margin: EdgeInsets.only(bottom: 1),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                prayerStore.prayersList[no].name.toString().toUpperCase(),
                textAlign: TextAlign.left,
                style: prayerStore.nextId == no
                    ? Theme.of(context).textTheme.bodyText1.apply(
                          fontWeightDelta: 3,
                          fontSizeDelta: 0.0,
                          color: colorPrimary,
                        )
                    : Theme.of(context).textTheme.bodyText1.apply(),
              ),
            ),

            // ADHAN
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(prayerStore.strings.prayers[no],
                      textAlign: TextAlign.right,
                      style: prayerStore.nextId == no
                          ? Theme.of(context).textTheme.bodyText1.apply(
                                fontWeightDelta: 3,
                                color: colorPrimary,
                              )
                          : Theme.of(context).textTheme.bodyText1),
                  Text(':'),
                  Text(prayerStore.strings.prayersSeconds[no],
                      textAlign: TextAlign.right,
                      style: prayerStore.nextId == no
                          ? Theme.of(context).textTheme.bodyText1.apply(
                                fontWeightDelta: 3,
                                color: colorPrimary,
                              )
                          : Theme.of(context).textTheme.bodyText1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget prayerHeading() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Container(
        //   color: colorSecondary,
        //   height: 2.0,
        //   // width: double.infinity,
        // ),
        Container(
          // color: colorSecondary,
          // height: 50.h,
          // height: 96.0,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Text(
                  namesHeading[0].toUpperCase(),
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.bodyText2.apply(
                      // fontWeightDelta: -2,
                      color: colorText,
                      fontSizeDelta: 0.0),
                ),
              ),
              Expanded(
                child: Text(
                  namesHeading[1].toUpperCase(),
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.bodyText2.apply(
                      // fontWeightDelta: -2,
                      color: colorText,
                      fontSizeDelta: 0.0),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
