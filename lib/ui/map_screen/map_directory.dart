import 'package:exam_repo_n8/utils/routes.dart';
import 'package:flutter/material.dart';

class MapDirectory extends StatelessWidget {
  const MapDirectory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Map Bar"),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, RouteNames.map);
            },
            title: Text("Map"),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, RouteNames.savedMaps);
            },
            title: Text("Saved Locations"),
          )
        ],
      ),
    );
  }
}
