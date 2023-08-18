// Enter Name:Akmaljon Muhammadov:
// Baxolash:
// 1. Dio task: 20 ball.
// 2. Firebase task : 20 ball.
// 3. Map task : 20 ball.
// 4. Custom Paint and Animations: 20 ball.
// 5. Suxbat: 20 ball
import 'package:exam_repo_n8/data/firebase/user_service.dart';
import 'package:exam_repo_n8/data/network/api_service.dart';
import 'package:exam_repo_n8/providers/country_providers/country_provider.dart';
import 'package:exam_repo_n8/providers/map_providers/address_call_provider.dart';
import 'package:exam_repo_n8/providers/map_providers/location_provider.dart';
import 'package:exam_repo_n8/providers/map_providers/saved_address_provider.dart';
import 'package:exam_repo_n8/providers/painting_providers/painting_provider.dart';
import 'package:exam_repo_n8/providers/tab_box_provider.dart';
import 'package:exam_repo_n8/providers/user_providers/user_provider.dart';
import 'package:exam_repo_n8/utils/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => TabBoxProvider()),
      ChangeNotifierProvider(create: (context)=>CountryProvider(apiService: ApiService())),
      ChangeNotifierProvider(create: (context)=>UserProvider(userService: UserService())),
      ChangeNotifierProvider(create: (context)=>LocationProvider()),
      ChangeNotifierProvider(create: (context)=>CallAddressProvider(apiService: ApiService())),
      ChangeNotifierProvider(create: (context)=>SavedListProvider()),
      ChangeNotifierProvider(create: (context)=>PaintingProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return ScreenUtilInit(
      designSize: Size(screenSize.width, screenSize.height),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child){
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(colorScheme: const ColorScheme.light(
            primary: Colors.indigoAccent
          )),
          initialRoute: RouteNames.initial,
          onGenerateRoute: AppRoutes.onGenerate,
        );
      },
    );
  }
}
