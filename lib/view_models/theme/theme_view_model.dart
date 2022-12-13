import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:folivora_palette/folivora_palette.dart';

final themeProvider = Provider<ThemeViewModel>((ref) {
  return ThemeViewModel();
});

class ThemeViewModel extends StateNotifier<ThemeData> {
  ThemeViewModel(
      ) : super(FvTheme.light);
  void setLightMode() {
    state = FvTheme.light;
  }

  void setDarkMode() {
    state = FvTheme.dark;
  }
}

