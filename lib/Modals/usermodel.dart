import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String uid;
  String fullName;
  String? lastname;
  String dob;
  String gender;
  String lookingfor;
  String phoneNumber;
  final photoURL;
  List<String> ethninity;
  List<String> likes;
  String religion;
  String location;
  double latitude;
  double longitude;
  // String photoURL;

  UserModel({
    required this.uid,
    required this.gender,
    this.lastname,
    required this.likes,
    required this.ethninity,
    required this.dob,
    required this.photoURL,
    required this.fullName,
    required this.lookingfor,
    required this.phoneNumber,
    required this.religion,
    required this.latitude,
    required this.longitude,
    required this.location,
  });

  ///Converting OBject into Json Object
  Map<String, dynamic> toJson() => {
        'fullName': fullName,
        'uid': uid,
        'lastname': lastname,
        'dob': dob,
        'phoneNumber': phoneNumber,
        'likes': likes,
        'photoURL': photoURL,
        'gender': gender,
        'lookingfor': lookingfor,
        'ethninity': ethninity,
        'religion': religion,
        'latitude': latitude,
        'longitude': longitude,
        'location': location,
      };

  ///
  static UserModel fromSnap(DocumentSnapshot snaps) {
    var snapshot = snaps.data() as Map<String, dynamic>;

    return UserModel(
      gender: snapshot['gender'],
      fullName: snapshot['fullName'],
      uid: snapshot['uid'],
      lastname: snapshot['lastname'],
      religion: snapshot['religion'],
      photoURL: snapshot['photoURL'],
      dob: snapshot['dob'],
      phoneNumber: snapshot['phoneNumber'],
      likes: snapshot['likes'],
      ethninity: snapshot['ethninity'],
      lookingfor: snapshot['lookingfor'],
      latitude: snapshot['latitude'],
      longitude: snapshot['longitude'],
      location: snapshot['location'],
    );
  }
}
