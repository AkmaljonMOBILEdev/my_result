import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exam_repo_n8/data/models/user_model/user_model.dart';
import 'package:exam_repo_n8/utils/constants.dart';

import '../models/universal_data.dart';

class UserService{
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;


  Future<UniversalData> addUser(
      {required UserModel userModel}) async {
    try {
      DocumentReference newUser = await FirebaseFirestore.instance
          .collection(users)
          .add(userModel.toJson());
      await FirebaseFirestore.instance
          .collection(users)
          .doc(newUser.id)
          .update({
        "userId": newUser.id,
      });
      return UniversalData(data: "${userModel.firstname} is added!");
    } on FirebaseException catch (e) {
      return UniversalData(error: e.code);
    } catch (e) {
      return UniversalData(error: e.toString());
    }
  }

  Future<UniversalData> updateUserDetails(
      {required UserModel userModel}) async {
    try {
      await _fireStore
          .collection(users)
          .doc(userModel.userId)
          .update(userModel.toJson());
      return UniversalData(data: "${userModel.firstname} is updated!");
    } on FirebaseException catch (e) {
      return UniversalData(error: e.code);
    } catch (e) {
      return UniversalData(error: e.toString());
    }
  }

  Future<UniversalData> deleteUser({required UserModel model}) async {
    try {
      await _fireStore.collection(users).doc(model.userId).delete();
      return UniversalData(data: "${model.firstname} is deleted!");
    } on FirebaseException catch (e) {
      return UniversalData(error: e.code);
    } catch (e) {
      return UniversalData(error: e.toString());
    }
  }

}