
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Section1 extends StatelessWidget {
  const Section1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          3,
          (i) => Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.r + 3),
              child: AspectRatio(
                aspectRatio: 1,
                child: LayoutBuilder(builder: (context, consts) {
                  return ClipRRect(
                    clipBehavior: Clip.antiAlias,
                    borderRadius:
                        BorderRadius.circular(consts.maxWidth * 0.09),
                    child: Image.asset(
                      'assets/images/home/section_1/slide_$i.png',
                      fit: BoxFit.fill,
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
