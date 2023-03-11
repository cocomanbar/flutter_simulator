import 'package:shared_preferences/shared_preferences.dart';

extension SharedPreferenceKeys on SharedPreferences {
  static String current_version = "last_version"; // 当前版本
}
