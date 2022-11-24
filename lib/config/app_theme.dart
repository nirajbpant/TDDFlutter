import 'package:flutter/material.dart';

import 'constants/assets_constants.dart';

class AppTheme {
  static const Color onPrimaryColor = Colors.white;
  static const Color onSecondaryColor = Color(0xff1183fa);
  static const Color primaryAppColor = Color(0xff224ecc);
  static ThemeData get appTheme => ThemeData(
        primaryColor: primaryAppColor,
        scaffoldBackgroundColor: Colors.white,
        errorColor: Colors.red.shade300,
        textTheme: _textTheme,
        appBarTheme: const AppBarTheme(
          brightness: Brightness.light,
          color: primaryAppColor,
          iconTheme: IconThemeData(color: onSecondaryColor),
          textTheme: _textTheme,
        ),
      );

  static const TextTheme _textTheme = TextTheme(
    headline1: screenHeadingStyleOne,
    headline2: screenHeadingStyleTwo,
    headline3: screenHeadingStyleThree,
    headline4: screenHeadingStyleThree,
    headline5: screenHeadingStyleThree,
    headline6: screenHeadingStyleSix, //app bar text style
    subtitle1: screenSubtitleStyle,
    subtitle2: screenSubtitleStyleTwo,
    bodyText1: screenBodyStyle,
    bodyText2: screenBodyStyleTwo,
    button: screenButtonStyle,
    caption: screenCaptionStyle,
    overline: screenOverlineStyle,
  );

  static TextTheme textThemeWhiteColor = TextTheme(
    headline1: screenHeadingStyleOne.copyWith(color: onSecondaryColor),
    headline2: screenHeadingStyleTwo.copyWith(color: onSecondaryColor),
    headline3: screenHeadingStyleThree.copyWith(color: onSecondaryColor),
    headline4: screenHeadingStyleThree.copyWith(color: onSecondaryColor),
    headline5: screenHeadingStyleThree.copyWith(color: onSecondaryColor),
    headline6: screenHeadingStyleSix.copyWith(
      color: onSecondaryColor,
    ), //app bar text style
    subtitle1: screenSubtitleStyle.copyWith(color: onSecondaryColor),
    subtitle2: screenSubtitleStyleTwo.copyWith(color: onSecondaryColor),
    bodyText1: screenBodyStyle.copyWith(color: onSecondaryColor),
    bodyText2: screenBodyStyleTwo.copyWith(color: onSecondaryColor),
    button: screenButtonStyle.copyWith(color: onSecondaryColor),
    caption: screenCaptionStyle.copyWith(color: onSecondaryColor),
    overline: screenOverlineStyle.copyWith(color: onSecondaryColor),
  );

  static const TextStyle screenHeadingStyleOne = TextStyle(
    fontSize: 40,
    fontFamily: fontNameMontserrat,
    fontWeight: FontWeight.bold,
    letterSpacing: -0.15,
    height: 1.25,
    color: onPrimaryColor,
  );

  static const TextStyle screenHeadingStyleTwo = TextStyle(
    fontSize: 20,
    fontFamily: fontNameMontserrat,
    fontWeight: FontWeight.w600,
    height: 1.4,
    letterSpacing: -0.1,
    color: onPrimaryColor,
  );

  static const TextStyle screenHeadingStyleThree = TextStyle(
    fontSize: 16,
    fontFamily: fontNameMontserrat,
    fontWeight: FontWeight.w600,
    height: 1.1,
    color: onPrimaryColor,
  );

  static const TextStyle screenHeadingStyleSix = TextStyle(
    fontSize: 14,
    fontFamily: fontNameMontserrat,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.1,
    height: 1.25,
    color: onPrimaryColor,
  );

  static const TextStyle screenHeadingErrorStyle = TextStyle(
    fontSize: 35,
    fontFamily: fontNameMontserrat,
    fontWeight: FontWeight.bold,
    letterSpacing: -0.15,
    height: 1.25,
    color: Colors.black87,
  );

  static const TextStyle screenSubtitleStyle = TextStyle(
    fontSize: 16,
    fontFamily: fontNameMontserrat,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    color: onPrimaryColor,
  );

  static const TextStyle screenSubtitleStyleTwo = TextStyle(
    fontSize: 14,
    fontFamily: fontNameMontserrat,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    color: onPrimaryColor,
  );
  static const TextStyle screenBodyStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    height: 1.5,
    letterSpacing: 0,
    color: onPrimaryColor,
  );

  static const TextStyle screenBodyStyleTwo = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    height: 1.5,
    letterSpacing: 0,
    color: onPrimaryColor,
  );

  static const TextStyle screenButtonStyle = TextStyle(
    fontSize: 16,
    fontFamily: fontNameMontserrat,
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: onPrimaryColor,
  );

  static const TextStyle screenCaptionStyle = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
    height: 1.16,
    color: onPrimaryColor,
  );

  static const TextStyle screenOverlineStyle = TextStyle(
    fontSize: 10.0,
    fontFamily: fontNameMontserrat,
    fontWeight: FontWeight.normal,
    height: 1.5,
    letterSpacing: 0,
    color: onPrimaryColor,
  );
}
