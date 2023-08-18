import 'package:exam_repo_n8/data/models/user_model/user_model.dart';
import 'package:exam_repo_n8/ui/countries_screen/countries_screen.dart';
import 'package:exam_repo_n8/ui/custom_paint/custom_paints.dart';
import 'package:exam_repo_n8/ui/custom_paint/sub_screens/car_screen.dart';
import 'package:exam_repo_n8/ui/custom_paint/sub_screens/first_screen.dart';
import 'package:exam_repo_n8/ui/map_screen/map_screen.dart';
import 'package:exam_repo_n8/ui/map_screen/sub_screens/saved_locations_screen.dart';
import 'package:exam_repo_n8/ui/splash_screen/splash_screen.dart';
import 'package:exam_repo_n8/ui/tab_box.dart';
import 'package:exam_repo_n8/ui/users_screen/sub_screens/add_or_update_screen.dart';
import 'package:exam_repo_n8/ui/users_screen/users_screen.dart';
import 'package:flutter/material.dart';

class RouteNames{
  static const String initial = "/";
  static const String tabBox = "tab_box";
  static const String countries = "countries_screen";
  static const String users = "users_screen";
  static const String addOrUpdate = "add_or_update_screen";
  static const String map = "map_screen";
  static const String savedMaps = "saved_maps_screen";
  static const String painting = "painting_screen";
  static const String firstPaint = "first_paint_screen";
  static const String carPaint = "car_paint_screen";
}

class AppRoutes{
  static Route onGenerate(RouteSettings settings){
    switch(settings.name){
    //overall
      case RouteNames.initial:
        return MaterialPageRoute(builder: (context)=>SplashScreen());
      case RouteNames.tabBox:
        return MaterialPageRoute(builder: (context)=>const TabBox());
      case RouteNames.countries:
        return MaterialPageRoute(builder: (context)=>const CountriesScreen());
    // user part
      case RouteNames.users:
        return MaterialPageRoute(builder: (context)=>const UsersScreen());
      case RouteNames.addOrUpdate:
        return MaterialPageRoute(builder: (context)=> AddOrUpdateScreen(
          userModel: settings.arguments as UserModel?,
        ));
    // map part
      case RouteNames.map:
        return MaterialPageRoute(builder: (context)=>const MapScreen());
      case RouteNames.savedMaps:
        return MaterialPageRoute(builder: (context)=>const SavedLocationsScreen());
    // painting part
      case RouteNames.painting:
        return MaterialPageRoute(builder: (context)=>const PaintingScreen());
      case RouteNames.firstPaint:
        return MaterialPageRoute(builder: (context)=>const FirstScreen());
      case RouteNames.carPaint:
        return MaterialPageRoute(builder: (context)=>const CarScreen());


      default:
        return MaterialPageRoute(builder: (context){
          return const Scaffold();
        });
    }
  }
}