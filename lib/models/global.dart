import 'package:flutter/material.dart';
import 'package:ense3/models/palette.dart';

final Brightness brightness = Brightness.dark;

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

final ThemeData theme = ThemeData(
  brightness: brightness,
  primarySwatch: brightness == Brightness.light
      ? generateMaterialColor(Color(0xFF0054A6)) // theme light -> bleu
      : generateMaterialColor(Color(0xff4BAF26)), // theme dark -> vert,
  fontFamily: "roboto",
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
  ),
);

// inutile
final ThemeData uwuTheme = ThemeData(
  primarySwatch: generateMaterialColor(Color(0xff4BAF26)),
  brightness: Brightness.dark,
  textTheme: TextTheme(
    bodyText1: TextStyle(
      color: almostBlack,
      fontSize: 14,
      fontFamily: "Roboto",
      fontWeight: FontWeight.normal,
    ),
    subtitle1: TextStyle(
      fontFamily: "Roboto",
      color: Color(0xff808080),
      fontSize: 12,
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
  ),
//    colorScheme: ColorScheme(
//      primary: brightness == Brightness.light
//          ? e3Blue // theme light -> bleu
//          : generateMaterialColor(Color(0xff2AB528)), // theme dark -> vert
//      background: brightness == Brightness.light ? const Color(0xffffffff) : const Color(0xFF252525),
//      brightness: brightness,),
);

extension CustomColorScheme on ColorScheme {
  Color get primaryColor => brightness == Brightness.light
      ? e3Blue // theme light -> bleu
      : generateMaterialColor(Color(0xff2AB528)); // theme dark -> vert
  Color get backgroundColor => brightness == Brightness.light ? const Color(0xffffffff) : const Color(0xFF252525);
  Color get border => brightness == Brightness.light ? const Color(0xFFD1D1D1) : const Color(0xFF37E833);

  Color get container => brightness == Brightness.light ? const Color(0xfff8f8f8) : const Color(0xFF131313);

  Color get text => brightness == Brightness.light ? const Color(0xFF343434) : const Color(0xFFD1D1D1);
}
