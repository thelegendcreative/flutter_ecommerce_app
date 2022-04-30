// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor:
          isDarkTheme ? Colors.teal.shade900 : Colors.grey.shade100,
      primarySwatch: Colors.teal,
      primaryColor: isDarkTheme ? Colors.teal.shade800 : Colors.teal.shade200,
      accentColor: Colors.tealAccent,
      backgroundColor:
          isDarkTheme ? Colors.grey.shade700 : Colors.grey.shade100,
      indicatorColor:
          isDarkTheme ? const Color(0xFFAED581) : const Color(0xFF7CB342),
      buttonColor: isDarkTheme ? Colors.grey.shade700 : Colors.grey.shade100,
      hintColor: isDarkTheme ? Colors.grey.shade700 : Colors.grey.shade100,
      highlightColor:
          isDarkTheme ? const Color(0xFFAEF6C7) : const Color(0xFFA1D88B),
      hoverColor:
          isDarkTheme ? const Color(0xFF4DB6AC) : const Color(0xFFB2DFDB),
      focusColor:
          isDarkTheme ? const Color(0xFFc7c7c7) : const Color(0xFFA1D88B),
      disabledColor: Colors.grey,
      textSelectionColor: isDarkTheme ? Colors.white : Colors.black,
      cardColor: isDarkTheme ? const Color(0xFF151515) : Colors.white,
      canvasColor: isDarkTheme ? Colors.black87 : Colors.grey[50],
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme
              ? const ColorScheme.dark()
              : const ColorScheme.light()),
      appBarTheme: const AppBarTheme(
        elevation: 0.0,
      ),
    );
  }
}
