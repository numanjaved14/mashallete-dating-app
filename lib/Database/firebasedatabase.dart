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
        likedTo: [],
        likedBy: [],
        age: '',
        profilePhotoURL: '',
        religion: '',
        ethninity: [],
        lookingfor: '',
        gender: '',
        fullName: '',
        uid: FirebaseAuth.instance.currentUser!.uid,
        aboutMe: '',
        alcohol: '',
        education: '',
        everBeenMarried: '',
        haveChildren: '',
        heightFeet: '',
        heigthInch: '',
        languages: [],
        likesIndex: [],
        profession: '',
        smoking: '',
        tagline: '',
        wantKids: '',
        willingRelocate: '',
        lastName: '',
        dob: '',
        likes: [],
        phoneNumber: FirebaseAuth.instance.currentUser!.phoneNumber.toString(),
        photoURL: [],
        latitude: 0,
        longitude: 0,
        location: '',
      );
      await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .set(
            userModel.toMap(),
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

  //Like Profile
  Future<String> likeProfile(String profileId, String uid, List likes) async {
    String res = "Some error occurred";
    try {
      if (likes.contains(uid)) {
        // if the likes list contains the user uid, we need to remove it
        FirebaseFirestore.instance.collection('users').doc(uid).update({
          'likedTo': FieldValue.arrayRemove([profileId])
        });
        FirebaseFirestore.instance.collection('users').doc(profileId).update({
          'likedBy': FieldValue.arrayRemove([uid])
        });
      } else {
        // else we need to add uid to the likes array
        FirebaseFirestore.instance.collection('users').doc(uid).update({
          'likedTo': FieldValue.arrayUnion([profileId])
        });
        FirebaseFirestore.instance.collection('users').doc(profileId).update({
          'likedBy': FieldValue.arrayUnion([uid])
        });
      }
      res = 'success';
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
