import 'package:exam_repo_n8/ui/countries_screen/countries_screen.dart';
import 'package:exam_repo_n8/ui/custom_paint/custom_paints.dart';
import 'package:exam_repo_n8/ui/map_screen/map_directory.dart';
import 'package:exam_repo_n8/ui/users_screen/users_screen.dart';
import 'package:flutter/cupertino.dart';

class TabBoxProvider with ChangeNotifier{
  List<Widget> screens = [
    CountriesScreen(),
    UsersScreen(),
    MapDirectory(),
    PaintingScreen()
  ];
  int currentIndex = 0;

  void changeIndex(int value){
    currentIndex = value;
    notifyListeners();
  }
}