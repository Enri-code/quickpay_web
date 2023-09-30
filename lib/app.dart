import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:quickpay_web/core/constants/constants.dart';
import 'package:quickpay_web/core/router/routes.dart';
import 'package:quickpay_web/core/theme/constants.dart';
import 'package:quickpay_web/core/theme/theme_data.dart';

class Quickpay extends StatelessWidget {
  const Quickpay({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return ScreenUtilInit(
      designSize: const Size(1720, 970),
      builder: (context, child) {
        return MaterialApp.router(
          title: Constants.quickpay,
          color: ColorPalette.purple,
          theme: LightThemeProvider(ColorPalette.purple).theme,
          themeMode: ThemeMode.light,
          routerConfig: appRouter.config(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
