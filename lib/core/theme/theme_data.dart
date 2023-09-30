import 'package:flutter/material.dart';

import 'text_theme.dart';
import 'widgets_theme.dart';

abstract class ThemeProvider {
  late final ThemeData theme;

  ColorScheme get colorScheme;
  TextTheme get textTheme;
  Color primaryColor;

  ThemeProvider(this.primaryColor) {
    final widgetsThemeInfo = WidgetsThemeInfo(primaryColor: primaryColor);

    theme = ThemeData.from(
      colorScheme: colorScheme,
      textTheme: textTheme
          .copyWith(
            bodyLarge:
                const TextStyle(height: 1.2, fontSize: 22, wordSpacing: 1.3),
            bodyMedium:
                const TextStyle(height: 1.2, fontSize: 16.5, wordSpacing: 1.3),
            labelLarge:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )
          .apply(fontFamily: 'Inter'),
    ).copyWith(
      textButtonTheme: widgetsThemeInfo.textButtonTheme,
      elevatedButtonTheme: widgetsThemeInfo.elevatedButtonTheme,
      outlinedButtonTheme: widgetsThemeInfo.outlinedButtonTheme,
      inputDecorationTheme: widgetsThemeInfo.inputDecorationTheme,
      visualDensity: VisualDensity.compact,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }
}

class LightThemeProvider extends ThemeProvider {
  LightThemeProvider(super.primaryColor);

  @override
  ColorScheme get colorScheme => ColorScheme.light(primary: primaryColor);

  @override
  TextTheme get textTheme => AppTextTheme().textTheme;
}
