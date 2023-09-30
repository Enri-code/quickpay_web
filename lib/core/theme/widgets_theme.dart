import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidgetsThemeInfo {
  final TextButtonThemeData textButtonTheme;
  final OutlinedButtonThemeData outlinedButtonTheme;

  WidgetsThemeInfo({required Color primaryColor})
      : textButtonTheme = TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            textStyle: const TextStyle(fontSize: 12),
          ),
        ),
        outlinedButtonTheme = OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(110, 52),
            padding: EdgeInsets.all(20.r),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 20.sp),
            side: BorderSide(width: 1.5, color: Colors.grey[400]!),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        );

  final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: const Size(100, 52),
      // fixedSize: const Size(110, 52),
      textStyle: const TextStyle(fontSize: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
    ),
  );

  // ignore: prefer_const_constructors
  final inputDecorationTheme = InputDecorationTheme(
    filled: false,
    // fillColor: ColorPalette.greys[200],
    isCollapsed: true,
    hintStyle: const TextStyle(fontSize: 12),
    // floatingLabelStyle: const TextStyle(color: Color(0xff34C95E), height: 1.2),
    errorStyle: const TextStyle(fontSize: 10, color: Color(0xFFF10000)),
    // fillColor: const Color(0xFFFFFFFF),
    // focusColor: Colors.red,
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(color: Colors.grey[300]!),
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(14)),
      borderSide: BorderSide(color: Colors.grey),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
  );
}
