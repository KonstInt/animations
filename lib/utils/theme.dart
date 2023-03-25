import 'package:flutter/material.dart';
import 'constants.dart';

ThemeData basicThemeData() => ThemeData(
    brightness: Brightness.light,
    textTheme: const TextTheme(
        headline1: TextStyle(
          fontFamily: fFontDefault,
          color: kPrimaryTextColor,
        ),
        headline2: TextStyle(
          fontFamily: fFontDefault,
          color: kSecondaryTextColor,
        )),
    shadowColor: kShadowColor,
    inputDecorationTheme: InputDecorationTheme(),
    iconTheme: const IconThemeData(color: kIconColor),
    primaryIconTheme: const IconThemeData(color: kSecondaryTextColor));
