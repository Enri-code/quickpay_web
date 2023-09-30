
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quickpay_web/core/constants/constants.dart';
import 'package:quickpay_web/core/theme/constants.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/icons/quickpay_icon.svg',
                  width: 28.w + 15,
                  colorFilter: const ColorFilter.mode(
                    ColorPalette.purple,
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(width: 10.w + 4),
                Text(
                  Constants.quickpay,
                  style: TextStyle(
                    fontSize: 7 + 10.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(onPressed: () {}, child: const Text('Personal')),
              SizedBox(width: 8.w),
              TextButton(onPressed: () {}, child: const Text('Business')),
              SizedBox(width: 8.w),
              TextButton(onPressed: () {}, child: const Text('Company')),
              SizedBox(width: 8.w),
              TextButton(onPressed: () {}, child: const Text('Legal')),
            ],
          ),
          Positioned(
            right: 0,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Contact Us'),
            ),
          ),
        ],
      ),
    );
  }
}
