
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quickpay_web/core/constants/constants.dart';

class AboutUsTab extends StatelessWidget {
  const AboutUsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16.w),
        Text(
          '''
${Constants.quickpay} was created out of passion and commitment 
towards ensuring hassle-free payments for individuals.
As founders of ${Constants.quickpay}, we have experienced individually, 
moments of delayed payments due to network downtime and 
inadequate bank server infrastructure, and we understand how 
frustrating this can be.
''',
          style: TextStyle(
            height: 1.5,
            fontSize: 28.sp,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(height: 32.w),
        // SizedBox(
        //   height: 48.w + 20,
        //   child: OutlinedButton(
        //     onPressed: () {},
        //     child: Row(
        //       mainAxisSize: MainAxisSize.min,
        //       children: [
        //         Text('Read More', style: TextStyle(fontSize: 16.sp + 4)),
        //         SizedBox(width: 8.w + 2),
        //         const Icon(Icons.arrow_right_alt),
        //       ],
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
