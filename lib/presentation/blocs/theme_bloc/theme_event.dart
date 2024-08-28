import 'package:flutter/material.dart';

@immutable
abstract class ThemeEvent {}

class ThemeEventChange extends ThemeEvent {
  final ThemeEventType currentTheme;
  ThemeEventChange(this.currentTheme);
}

enum ThemeEventType {
  toggleDark,
  toggleLight,
}