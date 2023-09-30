import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ntp/ntp.dart';
import 'package:quickpay_web/features/home/views/footer/nav_links.dart';

const _navSections = [
  NavSection(
    name: 'Banking',
    links: [
      NavLink(title: 'Personal Finance'),
      NavLink(title: 'Credit Card'),
      NavLink(title: 'Multiple Wallets'),
      NavLink(title: 'Savings'),
      NavLink(title: 'Free Transfers'),
    ],
  ),
  NavSection(
    name: 'Socials',
    links: [
      NavLink(title: 'Instagram'),
      NavLink(title: '  X'),
      NavLink(title: 'Facebook'),
      NavLink(title: 'Threads'),
    ],
  ),
  NavSection(
    name: 'Terms & Conditions',
    links: [
      NavLink(title: 'Legal'),
      NavLink(title: 'Privacy Policy'),
    ],
  ),
];

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: Theme.of(context).iconTheme.copyWith(color: Colors.white),
      child: DefaultTextStyle(
        style: const TextStyle(color: Colors.white),
        child: SizedBox(
          height: 140 + 240.w,
          // height: 180 + 200.w,
          child: ColoredBox(
            color: const Color(0xff000212),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 80,
                vertical: 32,
              ).w,
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                'assets/icons/quickpay_yellow_hourglass.svg',
                                width: 40.w + 16,
                              ),
                              const SizedBox(height: 24),
                              Row(
                                children: [
                                  Text(
                                    'Subscribe to our Newsletter!',
                                    style: TextStyle(fontSize: 10.sp + 6),
                                  ),
                                  const SizedBox(width: 4),
                                  Icon(Icons.arrow_downward, size: 10.sp + 12),
                                ],
                              ),
                              const SizedBox(height: 12),
                              _Newsletter(),
                              const SizedBox(height: 12),
                              Text(
                                'You can unsubscribe at anytime.',
                                style: TextStyle(
                                  fontSize: 10.sp + 4,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          flex: 7,
                          child: NavLinksSection(sections: _navSections),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  FutureBuilder(
                    future: NTP.now(),
                    builder: (context, response) {
                      return Text(
                        '${(response.data ?? DateTime.now()).year} | All Rights Reserved',
                        style: TextStyle(
                          fontSize: 12.sp + 4,
                          fontWeight: FontWeight.w300,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Newsletter extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  _Newsletter();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.w + 28,
      width: 130 + 200.w,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
          child: Row(
            children: [
              Expanded(
                flex: 7,
                child: TextField(
                  style: TextStyle(fontSize: 13.sp + 5, color: Colors.white),
                  decoration: InputDecoration(
                    filled: false,
                    isCollapsed: true,
                    hintText: 'Enter your email',
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintStyle: TextStyle(
                      fontSize: 12.sp + 5,
                      color: Colors.grey,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 12,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Subscribe',
                    style: TextStyle(
                      fontSize: 12.sp + 6,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
