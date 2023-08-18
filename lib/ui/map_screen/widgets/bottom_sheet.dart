import 'package:exam_repo_n8/providers/map_providers/saved_address_provider.dart';
import 'package:exam_repo_n8/ui/map_screen/widgets/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void showMapBottomSheet(BuildContext context, double lat, double long, String text) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height*.7,
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            MapTextField(hintText: "Title", controller: context.read<SavedListProvider>().titleController),
            MapTextField(hintText: "Orient", controller: context.read<SavedListProvider>().orientController),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                context.read<SavedListProvider>().insertUserAddress(
                  context: context, lat: lat,
                  lon: long, address:text,);
                Navigator.pop(context); // Close the bottom sheet
              },
              child: Text('Save'),
            ),
          ],
        ),
      );
    },
  );
}