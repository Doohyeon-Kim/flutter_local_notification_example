import 'package:flutter/material.dart';
import 'package:folivora_palette/folivora_palette.dart';

class ThemeNotifier extends InheritedWidget {
  ThemeNotifier({super.key, required Widget child}) : super(child: child);

  final ValueNotifier<ThemeData> theme = ValueNotifier(FvTheme.light);

  void setLightMode() {
    theme.value = FvTheme.light;
  }

  void setDarkMode() {
    theme.value = FvTheme.dark;
  }

  static ThemeNotifier? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ThemeNotifier>();


  void updateTheme(ThemeData theme) => this.theme.value = theme;

  @override
  bool updateShouldNotify(ThemeNotifier oldWidget) => oldWidget.theme != theme;
}