import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Hook that returns the current screen size
Size useScreenSize({BuildContext? context}) =>
    MediaQuery.of(context ?? useContext()).size;
