import 'package:theme_mode_handler/theme_mode_manager_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyManager implements IThemeModeManager {
  static String _key = "theme";

  @override
  Future<String> loadThemeMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print("Loaded theme : ${prefs.get(_key)}");
    return prefs.get(_key);
  }

  @override
  Future<bool> saveThemeMode(String value) async {
    final _prefs = await SharedPreferences.getInstance();
    print("Writing theme : $value");
    return _prefs.setString(_key, value);
  }
}
