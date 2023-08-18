import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ListButton extends StatelessWidget {
  const ListButton({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Container(
          height: 54.h,
          width: 54.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.indigoAccent),
          child: const Center(
              child: Icon(Icons.list, color: Colors.white,))),
    );
  }
}
