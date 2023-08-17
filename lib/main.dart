// Enter Name:Akmaljon Muhammadov:
// Baxolash:
// 1. Dio task: 20 ball.
// 2. Firebase task : 20 ball.
// 3. Map task : 20 ball.
// 4. Custom Paint and Animations: 20 ball.
// 5. Suxbat: 20 ball
import 'package:flutter/material.dart';

import 'home_screen/home_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

