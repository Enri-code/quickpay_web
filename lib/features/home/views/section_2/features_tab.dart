import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quickpay_web/core/theme/constants.dart';

class Feature {
  final String title;
  final String description;

  const Feature({required this.title, required this.description});
}

class FeaturesTab extends StatelessWidget {
  const FeaturesTab({super.key, required this.features});

  final List<Feature> features;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: features.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 20.w),
          child: Row(
            children: [
              _BulletCheckMark(),
              SizedBox(width: 16.w),
              Flexible(
                child: RichText(
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    text: '${features[index].title}: ',
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: features[index].description,
                        style: const TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _BulletCheckMark extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  _BulletCheckMark();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.w + 1),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.lerp(ColorPalette.purple, Colors.white, 0.85),
      ),
      child: Icon(Icons.check, color: ColorPalette.purple, size: 38.w),
    );
  }
}
