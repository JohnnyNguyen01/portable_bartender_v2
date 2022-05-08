import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// [ThemeMode] ChangeNotifier Provider
final themeModeProvider =
    ChangeNotifierProvider<ThemeModeNotifier>((ref) => ThemeModeNotifier());

/// Theme Change Notifier
class ThemeModeNotifier extends ChangeNotifier {
  ThemeModeNotifier({ThemeMode? themeMode})
      : themeMode = themeMode ?? ThemeMode.system;
  ThemeMode themeMode;

  /// toggle theme to desired [ThemeMode]
  void toggleTheme({required ThemeMode newThemeMode}) {
    themeMode = newThemeMode;
    notifyListeners();
  }
}
