import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quickpay_web/core/constants/constants.dart';
import 'package:quickpay_web/core/theme/constants.dart';
import 'package:quickpay_web/features/home/views/footer/footer.dart';
import 'package:quickpay_web/features/home/views/section_1.dart';
import 'package:quickpay_web/features/home/views/section_2/section_2.dart';
import 'package:quickpay_web/features/home/widgets/app_bar.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _emailTextController = TextEditingController();

  @override
  void dispose() {
    _emailTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
      color: ColorPalette.purple,
      title: 'Welcome to ${Constants.quickpay}',
      child: Scaffold(
        backgroundColor: const Color(0xffF3F3F5),
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 48.w, vertical: 16.h),
              sliver: const SliverToBoxAdapter(child: HomeAppBar()),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16),
              sliver: SliverToBoxAdapter(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 90.w),
                          child: SvgPicture.asset(
                            'assets/images/home/home_title_bg.svg',
                            width: 900.w + 200,
                          ),
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/images/home/home_title.svg',
                              width: 700.w + 140,
                            ),
                            SizedBox(height: 8.w + 8),
                            Wrap(
                              alignment: WrapAlignment.center,
                              children: [
                                Text(
                                  "Simplify your finances with",
                                  style: TextStyle(
                                    fontSize: 10.sp + 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  " effortless and secure transactions.",
                                  style: TextStyle(
                                    fontSize: 10.sp + 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            SizedBox(height: 38.w + 16),
                            Text(
                              "We're launching soon. Want to join our waitlist?",
                              style: TextStyle(
                                fontSize: 10.sp + 7,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 24.w + 8),
                          ],
                        ),
                        Positioned(
                          top: 0,
                          right: 160.w,
                          child: Image.asset(
                            'assets/images/home/home_title_bg_light_spots.png',
                            width: 80.w + 12,
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: SizedBox(
                        height: 42.w + 24,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxWidth: 280.w + 100,
                                ),
                                child: TextField(
                                  controller: _emailTextController,
                                  autofillHints: const [AutofillHints.email],
                                  keyboardType: TextInputType.emailAddress,
                                  style: const TextStyle(color: Colors.black),
                                  decoration: const InputDecoration(
                                    hintText: 'Enter your email',
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Join'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 100.w, vertical: 20),
              sliver: const SliverToBoxAdapter(child: Section1()),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 100.w, vertical: 20),
              sliver: const SliverToBoxAdapter(child: Section2()),
            ),
            const SliverPadding(padding: EdgeInsets.only(top: 24)),
            const SliverToBoxAdapter(child: CustomFooter()),
          ],
        ),
      ),
    );
  }
}
