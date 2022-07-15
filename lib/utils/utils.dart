import 'dart:convert';
import 'app_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesUtils {
  static PreferencesUtils ? _instance;
  final SharedPreferences preferences;

  PreferencesUtils._(this.preferences);

  static Future<PreferencesUtils?> getInstance() async {
    if (_instance == null) {
      final pref = await SharedPreferences.getInstance();
      _instance = PreferencesUtils._(pref);
    }
    return _instance;
  }

  AppState getAppState() {
    return AppState(
      size: preferences.getInt(FONT_SIZE) ?? 16,
      isDark: preferences.getBool(IS_DARK_THEME) ?? false,
    );
  }

  void saveAppState(AppState state) {
    preferences.setBool(IS_DARK_THEME, state.isDark);
    preferences.setInt(FONT_SIZE, state.fontSize);
  }

  static const FONT_SIZE = "font_size";
  static const IS_DARK_THEME = "is_dark";
}
