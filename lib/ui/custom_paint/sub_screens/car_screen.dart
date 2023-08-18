import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Car Screen"),
      ),
      body: Center(
        child: CustomPaint(
          size: Size(320.w, 320.h),
          painter: CarCustomPaint(),
        ),
      )
    );
  }
}




class CarCustomPaint extends CustomPainter {
@override
void paint(Canvas canvas, Size size) {

Path path_0 = Path();
path_0.moveTo(size.width*0.5307617,0);
path_0.lineTo(size.width*0.7467448,0);
path_0.lineTo(size.width*0.8006999,0);
path_0.cubicTo(size.width*0.8037923,0,size.width*0.8049316,size.height*0.002766927,size.width*0.8062337,size.height*0.005533854);
path_0.lineTo(size.width*0.8278809,size.height*0.05053711);
path_0.cubicTo(size.width*0.8291829,size.height*0.05330404,size.width*0.8253581,size.height*0.05607096,size.width*0.8223470,size.height*0.05607096);
path_0.lineTo(size.width*0.4551595,size.height*0.05607096);
path_0.cubicTo(size.width*0.4311523,size.height*0.05615234,size.width*0.4721680,0,size.width*0.5307617,0);
path_0.lineTo(size.width*0.5307617,0);
path_0.close();
path_0.moveTo(size.width*0.1939290,size.height*0.3722331);
path_0.lineTo(size.width*0.1939290,size.height*0.4026693);
path_0.lineTo(size.width*0.2243652,size.height*0.4026693);
path_0.cubicTo(size.width*0.2207031,size.height*0.3877767,size.width*0.2089030,size.height*0.3758952,size.width*0.1939290,size.height*0.3722331);
path_0.lineTo(size.width*0.1939290,size.height*0.3722331);
path_0.close();
path_0.moveTo(size.width*0.2243652,size.height*0.4226074);
path_0.lineTo(size.width*0.1939290,size.height*0.4226074);
path_0.lineTo(size.width*0.1939290,size.height*0.4530436);
path_0.cubicTo(size.width*0.2089030,size.height*0.4493815,size.width*0.2207031,size.height*0.4375814,size.width*0.2243652,size.height*0.4226074);
path_0.lineTo(size.width*0.2243652,size.height*0.4226074);
path_0.close();
path_0.moveTo(size.width*0.1740723,size.height*0.4530436);
path_0.lineTo(size.width*0.1740723,size.height*0.4226074);
path_0.lineTo(size.width*0.1436361,size.height*0.4226074);
path_0.cubicTo(size.width*0.1472982,size.height*0.4375814,size.width*0.1590983,size.height*0.4493815,size.width*0.1740723,size.height*0.4530436);
path_0.lineTo(size.width*0.1740723,size.height*0.4530436);
path_0.close();
path_0.moveTo(size.width*0.1435547,size.height*0.4027507);
path_0.lineTo(size.width*0.1739909,size.height*0.4027507);
path_0.lineTo(size.width*0.1739909,size.height*0.3723145);
path_0.cubicTo(size.width*0.1590983,size.height*0.3759766,size.width*0.1472982,size.height*0.3877767,size.width*0.1435547,size.height*0.4027507);
path_0.lineTo(size.width*0.1435547,size.height*0.4027507);
path_0.close();
path_0.moveTo(size.width*0.7328288,size.height*0.3722331);
path_0.lineTo(size.width*0.7328288,size.height*0.4026693);
path_0.lineTo(size.width*0.7632650,size.height*0.4026693);
path_0.cubicTo(size.width*0.7596029,size.height*0.3877767,size.width*0.7478027,size.height*0.3758952,size.width*0.7328288,size.height*0.3722331);
path_0.lineTo(size.width*0.7328288,size.height*0.3722331);
path_0.close();
path_0.moveTo(size.width*0.7632650,size.height*0.4226074);
path_0.lineTo(size.width*0.7328288,size.height*0.4226074);
path_0.lineTo(size.width*0.7328288,size.height*0.4530436);
path_0.cubicTo(size.width*0.7478027,size.height*0.4493815,size.width*0.7596029,size.height*0.4375814,size.width*0.7632650,size.height*0.4226074);
path_0.lineTo(size.width*0.7632650,size.height*0.4226074);
path_0.close();
path_0.moveTo(size.width*0.7129720,size.height*0.4530436);
path_0.lineTo(size.width*0.7129720,size.height*0.4226074);
path_0.lineTo(size.width*0.6825358,size.height*0.4226074);
path_0.cubicTo(size.width*0.6861165,size.height*0.4375814,size.width*0.6979167,size.height*0.4493815,size.width*0.7129720,size.height*0.4530436);
path_0.lineTo(size.width*0.7129720,size.height*0.4530436);
path_0.close();
path_0.moveTo(size.width*0.6824544,size.height*0.4027507);
path_0.lineTo(size.width*0.7128906,size.height*0.4027507);
path_0.lineTo(size.width*0.7128906,size.height*0.3723145);
path_0.cubicTo(size.width*0.6979167,size.height*0.3759766,size.width*0.6861165,size.height*0.3877767,size.width*0.6824544,size.height*0.4027507);
path_0.lineTo(size.width*0.6824544,size.height*0.4027507);
path_0.close();
path_0.moveTo(size.width*0.7296549,size.height*0.1039225);
path_0.lineTo(size.width*0.7583008,size.height*0.1039225);
path_0.cubicTo(size.width*0.7996419,size.height*0.1057943,size.width*0.8166504,size.height*0.1043294,size.width*0.8330892,size.height*0.1168620);
path_0.cubicTo(size.width*0.8534342,size.height*0.1324056,size.width*0.8614095,size.height*0.2010905,size.width*0.8698730,size.height*0.2328288);
path_0.cubicTo(size.width*0.8704427,size.height*0.2349447,size.width*0.8680013,size.height*0.2368978,size.width*0.8658040,size.height*0.2368978);
path_0.lineTo(size.width*0.7395833,size.height*0.2368978);
path_0.cubicTo(size.width*0.7373861,size.height*0.2368978,size.width*0.7357585,size.height*0.2351074,size.width*0.7355143,size.height*0.2328288);
path_0.lineTo(size.width*0.7255859,size.height*0.1079102);
path_0.cubicTo(size.width*0.7254232,size.height*0.1057943,size.width*0.7274577,size.height*0.1039225,size.width*0.7296549,size.height*0.1039225);
path_0.lineTo(size.width*0.7296549,size.height*0.1039225);
path_0.close();
path_0.moveTo(size.width*0.5378418,size.height*0.1046549);
path_0.lineTo(size.width*0.4442546,size.height*0.1046549);
path_0.cubicTo(size.width*0.4015299,size.height*0.1046549,size.width*0.3312174,size.height*0.1748861,size.width*0.3128255,size.height*0.2316895);
path_0.cubicTo(size.width*0.3119303,size.height*0.2344564,size.width*0.3151855,size.height*0.2369792,size.width*0.3181152,size.height*0.2369792);
path_0.lineTo(size.width*0.5230306,size.height*0.2369792);
path_0.cubicTo(size.width*0.5259603,size.height*0.2369792,size.width*0.5279134,size.height*0.2346191,size.width*0.5283203,size.height*0.2316895);
path_0.lineTo(size.width*0.5432129,size.height*0.1099447);
path_0.cubicTo(size.width*0.5434570,size.height*0.1070150,size.width*0.5406901,size.height*0.1046549,size.width*0.5378418,size.height*0.1046549);
path_0.lineTo(size.width*0.5378418,size.height*0.1046549);
path_0.close();
path_0.moveTo(size.width*0.5783691,size.height*0.1041667);
path_0.lineTo(size.width*0.6928711,size.height*0.1041667);
path_0.cubicTo(size.width*0.6950684,size.height*0.1041667,size.width*0.6967773,size.height*0.1060384,size.width*0.6969401,size.height*0.1082357);
path_0.lineTo(size.width*0.7056478,size.height*0.2329102);
path_0.cubicTo(size.width*0.7058105,size.height*0.2351074,size.width*0.7037760,size.height*0.2369792,size.width*0.7015788,size.height*0.2369792);
path_0.lineTo(size.width*0.5634766,size.height*0.2369792);
path_0.cubicTo(size.width*0.5612793,size.height*0.2369792,size.width*0.5591634,size.height*0.2351074,size.width*0.5594076,size.height*0.2329102);
path_0.lineTo(size.width*0.5743001,size.height*0.1082357);
path_0.cubicTo(size.width*0.5745443,size.height*0.1059570,size.width*0.5760905,size.height*0.1041667,size.width*0.5783691,size.height*0.1041667);
path_0.lineTo(size.width*0.5783691,size.height*0.1041667);
path_0.close();
path_0.moveTo(size.width*0.1840007,size.height*0.3280436);
path_0.cubicTo(size.width*0.2307129,size.height*0.3280436,size.width*0.2686361,size.height*0.3659668,size.width*0.2686361,size.height*0.4126790);
path_0.cubicTo(size.width*0.2686361,size.height*0.4593913,size.width*0.2307129,size.height*0.4973145,size.width*0.1840007,size.height*0.4973145);
path_0.cubicTo(size.width*0.1372884,size.height*0.4973145,size.width*0.09936523,size.height*0.4593913,size.width*0.09936523,size.height*0.4126790);
path_0.cubicTo(size.width*0.09936523,size.height*0.3659668,size.width*0.1372884,size.height*0.3280436,size.width*0.1840007,size.height*0.3280436);
path_0.lineTo(size.width*0.1840007,size.height*0.3280436);
path_0.close();
path_0.moveTo(size.width*0.01472982,size.height*0.3318685);
path_0.cubicTo(size.width*0.01904297,size.height*0.3299154,size.width*0.02376302,size.height*0.3290202,size.width*0.02888997,size.height*0.3291016);
path_0.cubicTo(size.width*0.02864583,size.height*0.3024089,size.width*0.03043620,size.height*0.2791341,size.width*0.03662109,size.height*0.2626139);
path_0.cubicTo(size.width*0.03889974,size.height*0.2530924,size.width*0.04305013,size.height*0.2461751,size.width*0.04858398,size.height*0.2411296);
path_0.cubicTo(size.width*0.06599935,size.height*0.2255859,size.width*0.2215169,size.height*0.2119141,size.width*0.2543132,size.height*0.2076823);
path_0.cubicTo(size.width*0.2945964,size.height*0.1682943,size.width*0.3394368,size.height*0.1322428,size.width*0.3872070,size.height*0.09814453);
path_0.cubicTo(size.width*0.4004720,size.height*0.08691406,size.width*0.4194336,size.height*0.08138021,size.width*0.4433594,size.height*0.08081055);
path_0.lineTo(size.width*0.8210449,size.height*0.08048503);
path_0.cubicTo(size.width*0.8496094,size.height*0.08032227,size.width*0.8715820,size.height*0.09252930,size.width*0.8855794,size.height*0.1199544);
path_0.lineTo(size.width*0.9170736,size.height*0.2106934);
path_0.lineTo(size.width*0.9242350,size.height*0.2087402);
path_0.lineTo(size.width*0.9242350,size.height*0.1734212);
path_0.cubicTo(size.width*0.9229329,size.height*0.1616211,size.width*0.9275716,size.height*0.1557617,size.width*0.9366048,size.height*0.1542969);
path_0.lineTo(size.width*0.9789225,size.height*0.1542969);
path_0.cubicTo(size.width*0.9905599,size.height*0.1547852,size.width*0.9987793,size.height*0.1606445,size.width*1.000081,size.height*0.1774902);
path_0.lineTo(size.width*1.000081,size.height*0.3029785);
path_0.cubicTo(size.width*1.000163,size.height*0.3159180,size.width*0.9954427,size.height*0.3243815,size.width*0.9834798,size.height*0.3261719);
path_0.lineTo(size.width*0.9441732,size.height*0.3261719);
path_0.cubicTo(size.width*0.9402669,size.height*0.3270671,size.width*0.9414876,size.height*0.3300781,size.width*0.9411621,size.height*0.3342285);
path_0.lineTo(size.width*0.9411621,size.height*0.3770345);
path_0.cubicTo(size.width*0.9383138,size.height*0.4086100,size.width*0.9296875,size.height*0.4330241,size.width*0.9043783,size.height*0.4361979);
path_0.lineTo(size.width*0.8277995,size.height*0.4361979);
path_0.cubicTo(size.width*0.8294271,size.height*0.3990885,size.width*0.8224284,size.height*0.3687337,size.width*0.8054199,size.height*0.3460286);
path_0.cubicTo(size.width*0.7436523,size.height*0.2635091,size.width*0.6096191,size.height*0.3126628,size.width*0.6186523,size.height*0.4364421);
path_0.lineTo(size.width*0.2895508,size.height*0.4364421);
path_0.cubicTo(size.width*0.2923177,size.height*0.3968913,size.width*0.2848307,size.height*0.3668620,size.width*0.2684733,size.height*0.3452962);
path_0.cubicTo(size.width*0.2068685,size.height*0.2639974,size.width*0.06355794,size.height*0.3078613,size.width*0.08048503,size.height*0.4389648);
path_0.lineTo(size.width*0.02962240,size.height*0.4389648);
path_0.cubicTo(size.width*-0.001057943,size.height*0.4389648,size.width*-0.01106771,size.height*0.3433431,size.width*0.01472982,size.height*0.3318685);
path_0.lineTo(size.width*0.01472982,size.height*0.3318685);
path_0.close();
path_0.moveTo(size.width*0.7229004,size.height*0.3280436);
path_0.cubicTo(size.width*0.7696126,size.height*0.3280436,size.width*0.8075358,size.height*0.3659668,size.width*0.8075358,size.height*0.4126790);
path_0.cubicTo(size.width*0.8075358,size.height*0.4593913,size.width*0.7696126,size.height*0.4973145,size.width*0.7229004,size.height*0.4973145);
path_0.cubicTo(size.width*0.6761882,size.height*0.4973145,size.width*0.6382650,size.height*0.4593913,size.width*0.6382650,size.height*0.4126790);
path_0.cubicTo(size.width*0.6382650,size.height*0.3659668,size.width*0.6761068,size.height*0.3280436,size.width*0.7229004,size.height*0.3280436);
path_0.lineTo(size.width*0.7229004,size.height*0.3280436);
path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xff000000).withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
return true;
}
}
