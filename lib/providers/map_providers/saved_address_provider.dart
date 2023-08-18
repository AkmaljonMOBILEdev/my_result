import 'package:exam_repo_n8/utils/loader_utils/loading_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '../../data/local/db/database.dart';
import '../../data/models/user_address/user_address.dart';

class SavedListProvider with ChangeNotifier {
  List<UserAddress> addresses = [];

  TextEditingController titleController = TextEditingController();
  TextEditingController orientController = TextEditingController();

  String title = '';
  String orient = '';

  UserLocationsProvider() {
    getUserAddresses();
  }

  getUserAddresses() async {
    addresses = await LocalDatabase.getAllUserAddresses();
    print("CURRENT LENGTH:${addresses.length}");
    notifyListeners();
  }

  insertUserAddress(
      {required BuildContext context,
      required double lat,
      required double lon,
      required String address}) async {
    getValues();
    if (title.isNotEmpty) {
      showLoading(context: context);
      await LocalDatabase.insertUserAddress(UserAddress(
        title: title,
        orient: orient,
        lat: lat,
        long: lon,
        address: address,
        created: DateTime.now().toString(),
      ));
      if(context.mounted) hideLoading(context: context);
      getUserAddresses();
    }
  }

  deleteUserAddress(int id) async {
    await LocalDatabase.deleteUserAddress(id);
    getUserAddresses();
  }

  void getValues() {
    title = titleController.text;
    orient = orientController.text;
  }
}
