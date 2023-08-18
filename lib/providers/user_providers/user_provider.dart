import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exam_repo_n8/data/firebase/user_service.dart';
import 'package:exam_repo_n8/data/models/user_model/user_model.dart';
import 'package:exam_repo_n8/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/models/universal_data.dart';
import '../../utils/loader_utils/loading_dialog.dart';

class UserProvider with ChangeNotifier {
  UserProvider({required this.userService});

  final UserService userService;
  String firstname = "";
  String lastname = "";
  String age = "";
  String userRole = "User";
  int roleNum = -1;
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  Future<void> add({required BuildContext context}) async {
    getValues();
    if (firstname.isNotEmpty && lastname.isNotEmpty && age.isNotEmpty) {
      UserModel userModel = UserModel(
        firstname: firstname,
        lastname: lastname,
        age: age,
        userId: "",
        fcm: fcmToken,
        createdDate: DateTime.now().toString(),
        userRole: userRole,
      );
      showLoading(context: context);
      UniversalData universalData = await userService.addUser(
        userModel: userModel,
      );
      if (context.mounted) {
        hideLoading(context: context);
      }
      if (universalData.error.isEmpty) {
        if (context.mounted) {
          showMessage(context, universalData.data as String);
          clearParameters();
          Navigator.pop(context);
        }
      } else {
        if (context.mounted) showMessage(context, universalData.error);
      }
    } else {
      showMessage(context, "Fill properties");
    }
  }

  Future<void> update(
      {required BuildContext context, required UserModel userModel}) async {
    getValues();
    if (firstname.isNotEmpty && lastname.isNotEmpty && age.isNotEmpty) {
      showLoading(context: context);
      UniversalData universalData = await userService.updateUserDetails(
        userModel: UserModel(
          firstname: firstname,
          lastname: lastname,
          age: age,
          userId: userModel.userId,
          fcm: userModel.fcm,
          createdDate: userModel.createdDate,
          userRole: userRole,
        ),
      );
      if (context.mounted) {
        hideLoading(context: context);
      }
      if (universalData.error.isEmpty) {
        if (context.mounted) {
          showMessage(context, universalData.data as String);
          clearParameters();
          Navigator.pop(context);
        }
      } else {
        if (context.mounted) showMessage(context, universalData.error);
      }
    } else {
      showMessage(context, "Fill properties");
    }
  }

  Future<void> delete({
    required BuildContext context,
    required UserModel model,
  }) async {
    showLoading(context: context);
    UniversalData universalData =
    await userService.deleteUser(model: model);
    if (context.mounted) hideLoading(context: context);
    if (universalData.error.isEmpty) {
      if (context.mounted) {
        showMessage(context, universalData.data as String);
        clearParameters();
        // Navigator.pop(context);
      }
    } else {
      if (context.mounted) showMessage(context, universalData.error);
    }
  }

  Stream<List<UserModel>> getAllUsers() {
    return FirebaseFirestore.instance.collection(users).snapshots().map(
        (event) =>
            event.docs.map((e) => UserModel.fromJson(e.data())).toList());
  }

  showMessage(BuildContext context, String error) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error)));
    notifyListeners();
  }

  void setInitialValues(UserModel userModel) {
    firstnameController = TextEditingController(text: userModel.firstname);
    lastnameController = TextEditingController(text: userModel.lastname);
    ageController = TextEditingController(text: userModel.age);
    userRole = userModel.userRole;
  }

  void setUserRole(String role, int number){
    userRole = role;
    roleNum = number;
    notifyListeners();
  }

  void getValues() {
    firstname = firstnameController.text;
    lastname = lastnameController.text;
    age = ageController.text;
  }

  void clearParameters() {
    firstnameController.clear();
    lastnameController.clear();
    ageController.clear();
    userRole = "";
  }
}
