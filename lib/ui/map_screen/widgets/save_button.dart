import 'package:exam_repo_n8/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ZoomTapAnimation(
      onTap: onTap,
      child: Container(
          height: (size.height*.08).h,
          width: (size.width*.5).w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.indigoAccent),
          child:  Center(
              child: Text("Save", style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: AppColors.white, fontWeight: FontWeight.w700
              ),))),
    );
  }
}
