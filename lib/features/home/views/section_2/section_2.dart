import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quickpay_web/core/constants/constants.dart';
import 'package:quickpay_web/features/home/views/section_2/about_us_tab.dart';
import 'package:quickpay_web/features/home/views/section_2/features_tab.dart';
import 'package:quickpay_web/features/home/views/section_2/investors_tab.dart';
import 'package:quickpay_web/features/home/widgets/button.dart';

const _tabTitles = [
  'Hassle-Free Payments',
  'We provide what every users needs',
  '${Constants.quickpay}, the next Big thing',
];

const _featuresData = <Feature>[
  Feature(
    title: 'Multiple Wallets',
    description: '''
Link all your Bank accounts with ${Constants.quickpay} and 
make Transactions with zero network issues.''',
  ),
  Feature(
    title: 'Personal Finance',
    description: '''
Set budget and track all your expenses with 
${Constants.quickpay}''',
  ),
  Feature(
    title: 'Free Transfer',
    description: 'Send money at anytime for free',
  ),
  Feature(
    title: 'Credit Card',
    description: '''
Get a Master and Visa Dollar Card for International 
Transactions for free''',
  ),
  Feature(
    title: 'Savings',
    description: '''
Enjoy mind blowing interest rate by saving your money 
with ${Constants.quickpay}''',
  ),
];

class Section2 extends StatefulWidget {
  const Section2({super.key});

  @override
  State<Section2> createState() => _Section2State();
}

class _Section2State extends State<Section2> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(color: Colors.white),
      child: AspectRatio(
        aspectRatio: 1.95,
        child: LayoutBuilder(builder: (context, consts) {
          return DecoratedBox(
            decoration: BoxDecoration(
              color: const Color(0xff000212),
              borderRadius: BorderRadius.circular(consts.maxWidth * 0.03),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/home/section_2/tab_$index.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 56.w) +
                            EdgeInsets.only(left: 52.w + 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Section2TabButton(
                                  isSelected: index == 0,
                                  title: 'About us',
                                  onPressed: () {
                                    setState(() => index = 0);
                                  },
                                ),
                                Section2TabButton(
                                  isSelected: index == 1,
                                  title: 'Features',
                                  onPressed: () {
                                    setState(() => index = 1);
                                  },
                                ),
                                Section2TabButton(
                                  isSelected: index == 2,
                                  title: 'Investors',
                                  onPressed: () {
                                    setState(() => index = 2);
                                  },
                                ),
                              ],
                            ),
                            SizedBox(height: 32.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _tabTitles[index],
                                    style: TextStyle(
                                      fontSize: 42.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/section_2_underline.svg',
                                    width: 240.w,
                                  ),
                                  SizedBox(height: 24.w),
                                  Expanded(
                                    child: IndexedStack(
                                      index: index,
                                      children: const [
                                        AboutUsTab(),
                                        FeaturesTab(features: _featuresData),
                                        InvestorsTab(),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(flex: 3),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
