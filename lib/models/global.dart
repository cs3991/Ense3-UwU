import 'package:flutter/material.dart';
import 'package:ense3/models/palette.dart';
import 'package:theme_mode_handler/theme_mode_handler.dart';

class BoxScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class ThemeManager {
  // light theme colors
  static const Color _e3Blue = Color(0xFF0054A6);
  static final MaterialColor _lightPrimary = generateMaterialColor(_e3Blue);
  static const Color _lightBackground = Color(0xffffffff);
  // static const Color _lightAccent = Color(0xFF69A9CA);
  static const Color _lightBorder = Color(0xFFD1D1D1);
  static const Color _lightContainer = Color(0xfff8f8f8);
  static const Color _lightText = Color(0xFF343434);

  // dark theme colors
  static const Color _uwuGreen = Color(0xff2AB528);
  static final MaterialColor _darkPrimary = generateMaterialColor(_uwuGreen);
  // static const Color _darkAccent = Color(0xFF37E833);
  static const Color _darkBackground = Color(0xFF252525);
  static const Color _darkBorder = Color(0xFF37E833);
  static const Color _darkContainer = Color(0xFF131313);
  static const Color _darkText = Color(0xFFD1D1D1);
  static const Color _darkChip = Color(0xff2E6A2C);

  static const Color barColor = Color(0xFF7D498F);
  static const Color autresColor = Color(0xFF388738);
  static const Color repasColor = Color(0xFF3F6591);
  static const Color conferenceColor = Color(0xFFB19D3D);
  static const Color soireeColor = Color(0xFF9A3E3E);

  static ThemeManager _instance;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    brightness: Brightness.light,
    primaryColor: _lightPrimary,
    appBarTheme: AppBarTheme(color: _lightPrimary),
    buttonColor: _lightPrimary,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: _lightText,
        fontSize: 14,
        fontFamily: "Roboto",
        fontWeight: FontWeight.normal,
      ),
      headline2: TextStyle(
        fontFamily: "Roboto",
        fontWeight: FontWeight.w600,
        color: _lightText,
        fontSize: 16,
      ),
      bodyText2: TextStyle(
        fontFamily: "Roboto",
        color: _lightText,
        fontSize: 20,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    primaryColor: _darkPrimary,
    appBarTheme: AppBarTheme(color: _darkPrimary),
    buttonColor: _darkPrimary,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: _darkText,
        fontSize: 14,
        fontFamily: "Roboto",
        fontWeight: FontWeight.normal,
      ),
      headline2: TextStyle(
        fontFamily: "Roboto",
        fontWeight: FontWeight.w600,
        color: _darkText,
        fontSize: 16,
      ),
      bodyText2: TextStyle(
        fontFamily: "Roboto",
        color: _darkText,
        fontSize: 20,
      ),
    ),
  );

  ThemeMode theme;

  // ignore: non_constant_identifier_names
  ThemeManager._ThemeManager(BuildContext context) {
    this.theme = ThemeModeHandler.of(context).themeMode;
  }

  static createInstance(BuildContext context) {
    if (_instance == null) _instance = new ThemeManager._ThemeManager(context);
  }

  static ThemeManager getInstance() {
    // if (instance == null) {
    //   instance = new ThemeManager();
    // }
    return _instance;
  }

  Color getPrimaryColor() {
    return theme == ThemeMode.light ? _lightPrimary : _darkPrimary;
  }

  Color getBackgroundColor() {
    return theme == ThemeMode.light ? _lightBackground : _darkBackground;
  }

  Color getBorderColor() {
    return theme == ThemeMode.light ? _lightBorder : _darkBorder;
  }

  Color getContainerColor() {
    return theme == ThemeMode.light ? _lightContainer : _darkContainer;
  }

  Color getTextColor() {
    return theme == ThemeMode.light ? _lightText : _darkText;
  }

  Color getChipColor() {
    return theme == ThemeMode.light ? null : _darkChip;
  }
}
