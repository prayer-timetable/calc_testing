// import dart and flutter resources
import 'package:flutter/material.dart';

// import local package resources
import 'package:calc_testing/theme/colors.dart';

import 'colors.dart';

themeData() {
  return ThemeData(
    brightness: liteTheme ? Brightness.light : Brightness.dark,
    primaryColor: colorPrimary,
    canvasColor: colorSecondary,
    accentColor: colorHighlight,
    primarySwatch: Colors.blue,
    // fontFamily: 'SourceSansPro',
    scaffoldBackgroundColor: colorBackground,
    // Define the default TextTheme. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
      // headline: TextStyle(fontSize: 64.0, fontStyle: FontStyle.italic),

      subtitle1: TextStyle(
          // fontFamily: 'ArimaMadurai',
          fontSize: 16.0,
          height: 1,
          fontStyle: FontStyle.normal,
          color: colorText),
      subtitle2: TextStyle(
        fontSize: 18.0,
        // shadows: <Shadow>[
        //   Shadow(
        //     offset: Offset(0.0, 0.0),
        //     blurRadius: 2.0,
        //     color: colorPrimary,
        //   ),
        //   // Shadow(
        //   //   offset: Offset(-1.0, -1.0),
        //   //   blurRadius: 6.0,
        //   //   color: colorHighlight,
        //   // ),
        // ],
      ),
      // caption: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.0),
      bodyText1: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: colorText,
          height: 1),
      bodyText2: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          color: colorText,
          height: 1),
      headline1: TextStyle(
        fontSize: 24.0,
        color: colorText,
        // fontWeight: FontWeight.w200,
      ),
      headline2: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 18.0,
        color: colorText,
        // shadows: <Shadow>[
        //   Shadow(
        //     offset: Offset(1.0, 1.0),
        //     blurRadius: 2.0,
        //     color: colorBlackTrans,
        //   ),
        //   Shadow(
        //     offset: Offset(-1.0, -1.0),
        //     blurRadius: 6.0,
        //     color: colorBlackTrans,
        //   ),
        // ],
      ),
      headline3: TextStyle(
        fontFamily: 'ArimaMadurai',
        fontWeight: FontWeight.w300,
        fontSize: 16.0,
        height: 1.15,
        color: colorText,
        // shadows: <Shadow>[
        //   Shadow(
        //     offset: Offset(1.0, 1.0),
        //     blurRadius: 2.0,
        //     color: colorPrimary,
        //   ),
        //   Shadow(
        //     offset: Offset(-1.0, -1.0),
        //     blurRadius: 6.0,
        //     color: colorHighlight,
        //   ),
        // ],
      ),
      // countdown primary
      headline4: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
        height: 1.5,
        color: colorHighlight,
        // shadows: <Shadow>[
        //   Shadow(
        //     offset: Offset(0.5, 0.5),
        //     blurRadius: 2.0,
        //     color: colorPrimary,
        //   ),
        // ],
      ),
      // countdown secondary
      headline5: TextStyle(
        fontWeight: FontWeight.w700,
        color: colorText,
        fontSize: 28.0,
        shadows: <Shadow>[
          Shadow(
            offset: Offset(0.5, 0.5),
            // blurRadius: 1.0,
            color: colorHighlight,
          ),
        ],
      ),
      headline6: TextStyle(
        fontSize: 80.0,
        height: 1,
        color: colorText,
        fontWeight: FontWeight.w200,
        shadows: <Shadow>[
          Shadow(
            offset: Offset(1.0, 1.0),
            blurRadius: 2.0,
            color: colorPrimary,
          ),
        ],
      ),
      // headline5: TextStyle(
      //     fontSize: 16.0,
      //     fontWeight: FontWeight.normal,
      //     color: colorBlackTrans),
      // headline6:
      //     TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, height: 1.15),
    ),
  );
}
