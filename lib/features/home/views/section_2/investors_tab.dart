
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvestorsTab extends StatelessWidget {
  const InvestorsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text(
              'For more enquires on our Business model, contact us:',
              style: TextStyle(
                height: 1.5,
                fontSize: 24.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(height: 32.w + 2),
          Flexible(
            child: _CustomTextField(
              title: 'Full Name',
              keyboardType: TextInputType.name,
              onChanged: (value) {},
            ),
          ),
          SizedBox(height: 32.w),
          Flexible(
            child: _CustomTextField(
              title: 'Email Address',
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {},
            ),
          ),
          SizedBox(height: 32.w),
          Flexible(
            child: _CustomTextField(
              title: 'Message',
              lineCount: 4,
              keyboardType: TextInputType.multiline,
              textInputAction: TextInputAction.newline,
              onChanged: (value) {},
            ),
          ),
          SizedBox(height: 32.w),
          SizedBox(
            width: 32 + 120.w,
            height: 10 + 32.w,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 18.sp + 2),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomTextField extends StatelessWidget {
  const _CustomTextField({
    required this.title,
    required this.onChanged,
    this.keyboardType,
    this.textInputAction,
    this.lineCount = 1,
  });

  final int lineCount;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final String title;
  final void Function(String value) onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: lineCount > 1 ? null : 36.w + 8,
      child: TextField(
        minLines: lineCount,
        maxLines: lineCount,
        style: TextStyle(color: Colors.white, fontSize: 12.sp + 4),
        textInputAction: textInputAction ?? TextInputAction.next,
        keyboardType: keyboardType ?? TextInputType.text,
        decoration: InputDecoration(
          labelText: title,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: const TextStyle(color: Colors.white),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 16.w,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(3),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(color: Colors.grey[300]!),
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
