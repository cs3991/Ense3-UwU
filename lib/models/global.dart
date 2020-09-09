import 'package:flutter/material.dart';
import 'package:ense3/models/palette.dart';

const Color _e3BluePrimary = Color(0xFF0054A6);
const Color lightBlue = Color(0xFF69A9CA);
const Color borderGrey = Color(0xFFD1D1D1);
const Color backgroundGrey = Color(0xfff8f8f8);
const Color almostBlack = Color(0xFF343434);

const Color barColor = Color(0xFF7D498F);
const Color autresColor = Color(0xFF388738);
const Color repasColor = Color(0xFF3F6591);
const Color conferenceColor = Color(0xFFB19D3D);
const Color soireeColor = Color(0xFF9A3E3E);

final MaterialColor e3Blue = generateMaterialColor(_e3BluePrimary);

class BoxScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

final ThemeData ense3Theme = ThemeData(
    primarySwatch: e3Blue,
    fontFamily: "roboto",
    brightness: Brightness.light,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: almostBlack,
        fontSize: 14,
        fontFamily: "Roboto",
        fontWeight: FontWeight.normal,
      ),
      headline2: TextStyle(
        fontFamily: "Roboto",
        fontWeight: FontWeight.w600,
        color: almostBlack,
        fontSize: 16,
      ),
      bodyText2: TextStyle(
        fontFamily: "Roboto",
        color: almostBlack,
        fontSize: 20,
      ),
    ));
