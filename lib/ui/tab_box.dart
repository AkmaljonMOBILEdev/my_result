import 'package:exam_repo_n8/providers/tab_box_provider.dart';
import 'package:exam_repo_n8/ui/widgets/bottom_navigation_bar_item.dart';
import 'package:exam_repo_n8/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TabBox extends StatelessWidget {
  const TabBox({super.key});

  @override
  Widget build(BuildContext context) {
    int theIndex = Provider.of<TabBoxProvider>(context, listen: true).currentIndex;
    return Scaffold(
      body: context.watch<TabBoxProvider>().screens[theIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){
          context.read<TabBoxProvider>().changeIndex(value);
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.white,
        backgroundColor: Colors.indigoAccent,
        currentIndex: theIndex,
        items: [
          getBottomItems(label: "Country", icon: Icon(Icons.flag)),
          getBottomItems(label: "Users", icon: Icon(Icons.people)),
          getBottomItems(label: "Map", icon: Icon(Icons.location_pin)),
          getBottomItems(label: "Painting", icon: Icon(Icons.format_paint_outlined)),
        ],

      ),
    );
  }
}
