import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Hook that returns the app's current [ThemeData]
ThemeData useTheme({BuildContext? context}) {
  if (context != null) {
    return Theme.of(context);
  }
  return Theme.of(useContext());
}
