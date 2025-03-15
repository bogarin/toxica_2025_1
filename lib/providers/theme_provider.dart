import 'package:flutter/material.dart';
import 'package:toxica_2/config/theme/app_theme.dart';

class ThemeProvider extends ChangeNotifier {
  AppTheme _appTheme;
  ThemeProvider() : _appTheme = AppTheme(selectedColors: 2);

  AppTheme get appTheme => _appTheme;

  void setAppTheme(int index) {
    _appTheme = AppTheme(selectedColors: index);
    notifyListeners();
  }

  void setBrightness(Brightness brightness) {
    _appTheme = AppTheme(
        selectedColors: _appTheme.selectedColors, brightness: brightness);
    notifyListeners();
  }
}
