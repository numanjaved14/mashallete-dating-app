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
        ethninity: '',
        lookingfor: '',
        gender: '',
        fullName: '',
        uid: FirebaseAuth.instance.currentUser!.uid,
        lastname: '',
        dob: '',
        likes: '',
        phoneNumber: FirebaseAuth.instance.currentUser!.phoneNumber.toString(),
        photoURL: '',
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
}
