import 'package:flutter/material.dart';
import 'package:ense3/models/palette.dart';

Color _e3BluePrimary = Color(0xFF0054A6);
Color lightBlue = Color(0xFF69A9CA);
Color borderGrey = Color(0xFFD1D1D1);
Color backgroundGrey = Color(0xFFeeeeee);
Color almostDark = Color(0xFF343434);

Color barColor = Color(0xFF7D498F);
Color autresColor = Color(0xFF388738);
Color repasColor = Color(0xFF3F6591);
Color conferenceColor = Color(0xFFB19D3D);
Color soireeColor = Color(0xFF9A3E3E);

MaterialColor e3Blue = generateMaterialColor(_e3BluePrimary);

class boxScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
