import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Section2TabButton extends StatelessWidget {
  const Section2TabButton({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onPressed,
  });

  final String title;
  final bool isSelected;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: isSelected,
      child: SizedBox(
        width: 20 + 140.w,
        height: 8 + 56.w,
        child: ElevatedButton(
          onPressed: onPressed,
          style: isSelected
              ? ElevatedButton.styleFrom(
                  textStyle:  TextStyle(fontSize: 18.sp + 2),
                )
              : ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  textStyle:  TextStyle(fontSize: 18.sp + 2),
                ),
          child: Text(title),
        ),
      ),
    );
  }
}
