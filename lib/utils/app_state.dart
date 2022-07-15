import 'package:flutter/foundation.dart';

class AppState extends ChangeNotifier {
  int? _fontSize ;
  bool? _isDark;

  AppState({int? size, bool? isDark}) {
    _fontSize = size!;
    _isDark = isDark!;
  }

  int? get fontSize {
    return _fontSize;
  }

  set fontSize(int? size) {
    _fontSize = size;
    notifyListeners();
  }

  bool? get isDark {
    return _isDark;
  }

  set isDark(bool? value) {
    _isDark = value;
    notifyListeners();
  }
}
