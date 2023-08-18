import 'package:exam_repo_n8/utils/colors.dart';
import 'package:exam_repo_n8/utils/icons.dart';
import 'package:exam_repo_n8/utils/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui' as ui;
import 'package:flutter_svg/flutter_svg.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              CustomPaint(
                size: Size(double.infinity, height * .444),
                painter: MainPainter(),
              ),
              Positioned(
                top: 28.h,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: AppColors.white,
                  ),
                ),
              ),
              Positioned(
                  top: 120.h,
                  left: 20.w,
                  child: SvgPicture.asset(
                    AppIcons.shop,
                  )),
              Positioned(
                  top: 167.h,
                  left: 20.w,
                  child: Text(
                    "eCommerce Shop",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Mulish',
                        color: AppColors.white),
                  )),
              Positioned(
                  top: 210.h,
                  left: 20.w,
                  child: Container(
                    width: 220.w,
                    height: .5.h,
                    decoration: const BoxDecoration(color: AppColors.white),
                  )),
              Positioned(
                  top: 217.h,
                  left: 20.w,
                  child: Text(
                    "Professional App for your\neCommerce business",
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                        fontFamily: 'Mulish'),
                  ))
            ],
          ),
          Image.asset(
            AppIcons.purchase,
            width: 280.w,
            height: MediaQuery.of(context).size.height * 0.34.h,
          ),
          32.bh,
          Text(
            "Purchase Online !!",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.w700, fontFamily: 'Mulish'),
          ),
          16.bh,
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing,\nsed do eiusmod tempor ut labore",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(fontWeight: FontWeight.w300, fontSize: 10.sp),
          )
        ],
      ),
    );
  }
}

class FirstShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 1.003449, 0);
    path_0.lineTo(size.width * -0.00005240748, 0);
    path_0.lineTo(size.width * -0.00005240748, size.height * 0.9579200);
    path_0.cubicTo(
        size.width * 0.04497243,
        size.height * 0.9861571,
        size.width * 0.1023682,
        size.height * 1.003357,
        size.width * 0.1746841,
        size.height * 0.9958286);
    path_0.cubicTo(
        size.width * 0.3905164,
        size.height * 0.9728486,
        size.width * 0.8099696,
        size.height * 0.5640914,
        size.width * 1.003449,
        size.height * 0.4566629);
    path_0.lineTo(size.width * 1.003449, 0);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = const Color(0xff037EEE).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class SubShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 1.006146, 0);
    path_0.lineTo(size.width * 0.001239267, 0);
    path_0.cubicTo(
        size.width * 0.006224792,
        size.height * 0.2450391,
        size.width * 0.08254792,
        size.height * 0.4799442,
        size.width * 0.2165829,
        size.height * 0.6627817);
    path_0.cubicTo(
        size.width * 0.3506179,
        size.height * 0.8456193,
        size.width * 0.5336417,
        size.height * 0.9644822,
        size.width * 0.7329750,
        size.height * 0.9981574);
    path_0.cubicTo(
        size.width * 0.8377958,
        size.height * 0.9189289,
        size.width * 0.9318167,
        size.height * 0.8522690,
        size.width * 1.006146,
        size.height * 0.8108680);
    path_0.lineTo(size.width * 1.006146, 0);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MainPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 1.003449, 0);
    path_0.lineTo(size.width * -0.00005240748, 0);
    path_0.lineTo(size.width * -0.00005240748, size.height * 0.9579200);
    path_0.cubicTo(
        size.width * 0.04497243,
        size.height * 0.9861571,
        size.width * 0.1023682,
        size.height * 1.003357,
        size.width * 0.1746841,
        size.height * 0.9958286);
    path_0.cubicTo(
        size.width * 0.3905164,
        size.height * 0.9728486,
        size.width * 0.8099696,
        size.height * 0.5640914,
        size.width * 1.003449,
        size.height * 0.4566629);
    path_0.lineTo(size.width * 1.003449, 0);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = const Color(0xff037EEE).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 1.003446, 0);
    path_1.lineTo(size.width * 0.4399463, 0);
    path_1.cubicTo(
        size.width * 0.4427430,
        size.height * 0.1379220,
        size.width * 0.4855397,
        size.height * 0.2701400,
        size.width * 0.5607009,
        size.height * 0.3730514);
    path_1.cubicTo(
        size.width * 0.6358598,
        size.height * 0.4759629,
        size.width * 0.7384907,
        size.height * 0.5428657,
        size.width * 0.8502664,
        size.height * 0.5618200);
    path_1.cubicTo(
        size.width * 0.9090444,
        size.height * 0.5172257,
        size.width * 0.9617664,
        size.height * 0.4797057,
        size.width * 1.003446,
        size.height * 0.4564029);
    path_1.lineTo(size.width * 1.003446, 0);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Colors.white.withOpacity(.2);
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
