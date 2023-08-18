import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MapTextField extends StatelessWidget {
  const MapTextField({super.key, required this.hintText, required this.controller});
  final String hintText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
      child: TextField(
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.text,
        controller: controller,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.titleMedium,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: BorderSide(
                    color: Colors.indigoAccent,
                    width: 1.w
                )
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: BorderSide(
                    color: Colors.green,
                    width: 2.w
                )
            )
        ),
      ),
    );
  }
}
