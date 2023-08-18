import 'package:exam_repo_n8/utils/routes.dart';
import 'package:flutter/material.dart';

class PaintingScreen extends StatelessWidget {
  const PaintingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paintings"),
      ),
      body: Column(children: [
        ListTile(
          onTap: (){
            Navigator.pushNamed(context, RouteNames.firstPaint);
          },
          title: Text("First Screen UI"),
        ),
        ListTile(
          onTap: (){
            Navigator.pushNamed(context, RouteNames.carPaint);
          },
          title: Text("Car Paint Screen"),
        )
      ],),
    );
  }
}
