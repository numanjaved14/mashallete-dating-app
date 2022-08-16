import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/Modals/usermodel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Database {
  //OTP Number Add
  Future<String> numberAdd() async {
    String res = 'Some error occured';
    try {
      //Add User to the database with modal
      UserModel userModel = UserModel(
        religion: '',
        ethninity: [],
        lookingfor: '',
        gender: '',
        fullName: '',
        uid: FirebaseAuth.instance.currentUser!.uid,
        lastname: '',
        dob: '',
        likes: [],
        phoneNumber: FirebaseAuth.instance.currentUser!.phoneNumber.toString(),
        photoURL: '',
        latitude: 0,
        longitude: 0,
        location: '',
      );
      await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .set(
            userModel.toJson(),
          );
      res = 'success';
      debugPrint(res);
    } catch (e) {
      res = e.toString();
    }
    return res;
  }

  //Name Update
  Future<String> updateName(
      {required String fullName, String? lastName}) async {
    String res = 'Some error occured';
    debugPrint(res);

    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update({
        'fullName': fullName,
        'lastName': lastName,
      });
      res = 'success';
      debugPrint(res);
    } on FirebaseException catch (e) {
      res = e.toString();
      debugPrint(res);
    }
    return res;
  }

  //Name Update
  Future<String> updateData({
    required String key,
    required String value,
  }) async {
    String res = 'Some error occured';
    debugPrint(res);

    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update({
        key: value,
      });
      res = 'success';
      debugPrint(res);
    } on FirebaseException catch (e) {
      res = e.toString();
      debugPrint(res);
    }
    return res;
  }

  //Name Update
  Future<String> updateList({
    required String key,
    required List value,
  }) async {
    String res = 'Some error occured';
    debugPrint(res);

    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update({
        key: value,
      });
      res = 'success';
      debugPrint(res);
    } on FirebaseException catch (e) {
      res = e.toString();
      debugPrint(res);
    }
    return res;
  }
}
