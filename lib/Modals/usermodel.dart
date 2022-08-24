// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class UserModel {
  UserModel({
    required this.uid,
    required this.fullName,
    this.lastName,
    required this.dob,
    required this.gender,
    required this.lookingfor,
    required this.phoneNumber,
    required this.photoURL,
    required this.ethninity,
    required this.likes,
    required this.likesIndex,
    required this.languages,
    required this.religion,
    required this.location,
    required this.latitude,
    required this.longitude,
    required this.tagline,
    required this.aboutMe,
    required this.heightFeet,
    required this.heigthInch,
    required this.haveChildren,
    required this.alcohol,
    required this.smoking,
    required this.education,
    required this.profession,
    required this.everBeenMarried,
    required this.wantKids,
    required this.willingRelocate,
  });

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] as String,
      fullName: map['fullName'] as String,
      lastName: map['lastName'] != null ? map['lastName'] as String : null,
      dob: map['dob'] as String,
      gender: map['gender'] as String,
      lookingfor: map['lookingfor'] as String,
      phoneNumber: map['phoneNumber'] as String,
      photoURL: List<String>.from(map['photoURL'] as List<String>),
      ethninity: List<String>.from(map['ethninity'] as List<String>),
      likes: List<String>.from(map['likes'] as List<String>),
      likesIndex: List<String>.from(map['likesIndex'] as List<String>),
      languages: List<String>.from(map['languages'] as List<String>),
      religion: map['religion'] as String,
      location: map['location'] as String,
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
      tagline: map['tagline'] as String,
      aboutMe: map['aboutMe'] as String,
      heightFeet: map['heightFeet'] as String,
      heigthInch: map['heigthInch'] as String,
      haveChildren: map['haveChildren'] as String,
      alcohol: map['alcohol'] as String,
      smoking: map['smoking'] as String,
      education: map['education'] as String,
      profession: map['profession'] as String,
      everBeenMarried: map['everBeenMarried'] as String,
      wantKids: map['wantKids'] as String,
      willingRelocate: map['willingRelocate'] as String,
    );
  }

  String aboutMe;
  String alcohol;
  String dob;
  String education;
  List<String> ethninity;
  String everBeenMarried;
  String fullName;
  String gender;
  String haveChildren;
  String heightFeet;
  String heigthInch;
  List<String> languages;
  String? lastName;
  double latitude;
  List<String> likes;
  List<String> likesIndex;
  String location;
  double longitude;
  String lookingfor;
  String phoneNumber;
  List<String> photoURL;
  String profession;
  String religion;
  String smoking;
  String tagline;
  String uid;
  String wantKids;
  String willingRelocate;

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.uid == uid &&
        other.fullName == fullName &&
        other.lastName == lastName &&
        other.dob == dob &&
        other.gender == gender &&
        other.lookingfor == lookingfor &&
        other.phoneNumber == phoneNumber &&
        listEquals(other.photoURL, photoURL) &&
        listEquals(other.ethninity, ethninity) &&
        listEquals(other.likes, likes) &&
        listEquals(other.likesIndex, likesIndex) &&
        listEquals(other.languages, languages) &&
        other.religion == religion &&
        other.location == location &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.tagline == tagline &&
        other.aboutMe == aboutMe &&
        other.heightFeet == heightFeet &&
        other.heigthInch == heigthInch &&
        other.haveChildren == haveChildren &&
        other.alcohol == alcohol &&
        other.smoking == smoking &&
        other.education == education &&
        other.profession == profession &&
        other.everBeenMarried == everBeenMarried &&
        other.wantKids == wantKids &&
        other.willingRelocate == willingRelocate;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        fullName.hashCode ^
        lastName.hashCode ^
        dob.hashCode ^
        gender.hashCode ^
        lookingfor.hashCode ^
        phoneNumber.hashCode ^
        photoURL.hashCode ^
        ethninity.hashCode ^
        likes.hashCode ^
        likesIndex.hashCode ^
        languages.hashCode ^
        religion.hashCode ^
        location.hashCode ^
        latitude.hashCode ^
        longitude.hashCode ^
        tagline.hashCode ^
        aboutMe.hashCode ^
        heightFeet.hashCode ^
        heigthInch.hashCode ^
        haveChildren.hashCode ^
        alcohol.hashCode ^
        smoking.hashCode ^
        education.hashCode ^
        profession.hashCode ^
        everBeenMarried.hashCode ^
        wantKids.hashCode ^
        willingRelocate.hashCode;
  }

  @override
  String toString() {
    return 'UserModel(uid: $uid, fullName: $fullName, lastName: $lastName, dob: $dob, gender: $gender, lookingfor: $lookingfor, phoneNumber: $phoneNumber, photoURL: $photoURL, ethninity: $ethninity, likes: $likes, likesIndex: $likesIndex, languages: $languages, religion: $religion, location: $location, latitude: $latitude, longitude: $longitude, tagline: $tagline, aboutMe: $aboutMe, heightFeet: $heightFeet, heigthInch: $heigthInch, haveChildren: $haveChildren, alcohol: $alcohol, smoking: $smoking, education: $education, profession: $profession, everBeenMarried: $everBeenMarried, wantKids: $wantKids, willingRelocate: $willingRelocate)';
  }

  // String photoURL;

  // UserModel(
  //     {required this.uid,
  //     required this.gender,
  //     this.lastName,
  //     required this.likes,
  //     required this.ethninity,
  //     required this.dob,
  //     required this.photoURL,
  //     required this.fullName,
  //     required this.lookingfor,
  //     required this.phoneNumber,
  //     required this.religion,
  //     required this.latitude,
  //     required this.longitude,
  //     required this.location,
  //     required this.aboutMe,
  //     required this.alcohol,
  //     required this.education,
  //     required this.everBeenMarried,
  //     required this.haveChildren,
  //     required this.heightFeet,
  //     required this.heigthInch,
  //     required this.languages,
  //     required this.likesIndex,
  //     required this.profession,
  //     required this.smoking,
  //     required this.tagline,
  //     required this.wantKids,
  //     required this.willingRelocate,
  //     });

  // ///Converting OBject into Json Object
  // Map<String, dynamic> toJson() => {
  //       'fullName': fullName,
  //       'uid': uid,
  //       'lastname': lastName,
  //       'dob': dob,
  //       'phoneNumber': phoneNumber,
  //       'likes': likes,
  //       'photoURL': photoURL,
  //       'gender': gender,
  //       'lookingfor': lookingfor,
  //       'ethninity': ethninity,
  //       'religion': religion,
  //       'latitude': latitude,
  //       'longitude': longitude,
  //       'location': location,
  //     };

  // ///
  // static UserModel fromSnap(DocumentSnapshot snaps) {
  //   var snapshot = snaps.data() as Map<String, dynamic>;

  //   return UserModel(
  //     gender: snapshot['gender'],
  //     fullName: snapshot['fullName'],
  //     uid: snapshot['uid'],
  //     lastName: snapshot['lastname'],
  //     religion: snapshot['religion'],
  //     photoURL: snapshot['photoURL'],
  //     dob: snapshot['dob'],
  //     phoneNumber: snapshot['phoneNumber'],
  //     likes: snapshot['likes'],
  //     ethninity: snapshot['ethninity'],
  //     lookingfor: snapshot['lookingfor'],
  //     latitude: snapshot['latitude'],
  //     longitude: snapshot['longitude'],
  //     location: snapshot['location'],
  //   );
  // }

  UserModel copyWith({
    String? uid,
    String? fullName,
    String? lastName,
    String? dob,
    String? gender,
    String? lookingfor,
    String? phoneNumber,
    List<String>? photoURL,
    List<String>? ethninity,
    List<String>? likes,
    List<String>? likesIndex,
    List<String>? languages,
    String? religion,
    String? location,
    double? latitude,
    double? longitude,
    String? tagline,
    String? aboutMe,
    String? heightFeet,
    String? heigthInch,
    String? haveChildren,
    String? alcohol,
    String? smoking,
    String? education,
    String? profession,
    String? everBeenMarried,
    String? wantKids,
    String? willingRelocate,
  }) {
    return UserModel(
      uid: uid ?? this.uid,
      fullName: fullName ?? this.fullName,
      lastName: lastName ?? this.lastName,
      dob: dob ?? this.dob,
      gender: gender ?? this.gender,
      lookingfor: lookingfor ?? this.lookingfor,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      photoURL: photoURL ?? this.photoURL,
      ethninity: ethninity ?? this.ethninity,
      likes: likes ?? this.likes,
      likesIndex: likesIndex ?? this.likesIndex,
      languages: languages ?? this.languages,
      religion: religion ?? this.religion,
      location: location ?? this.location,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      tagline: tagline ?? this.tagline,
      aboutMe: aboutMe ?? this.aboutMe,
      heightFeet: heightFeet ?? this.heightFeet,
      heigthInch: heigthInch ?? this.heigthInch,
      haveChildren: haveChildren ?? this.haveChildren,
      alcohol: alcohol ?? this.alcohol,
      smoking: smoking ?? this.smoking,
      education: education ?? this.education,
      profession: profession ?? this.profession,
      everBeenMarried: everBeenMarried ?? this.everBeenMarried,
      wantKids: wantKids ?? this.wantKids,
      willingRelocate: willingRelocate ?? this.willingRelocate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'fullName': fullName,
      'lastName': lastName,
      'dob': dob,
      'gender': gender,
      'lookingfor': lookingfor,
      'phoneNumber': phoneNumber,
      'photoURL': photoURL,
      'ethninity': ethninity,
      'likes': likes,
      'likesIndex': likesIndex,
      'languages': languages,
      'religion': religion,
      'location': location,
      'latitude': latitude,
      'longitude': longitude,
      'tagline': tagline,
      'aboutMe': aboutMe,
      'heightFeet': heightFeet,
      'heigthInch': heigthInch,
      'haveChildren': haveChildren,
      'alcohol': alcohol,
      'smoking': smoking,
      'education': education,
      'profession': profession,
      'everBeenMarried': everBeenMarried,
      'wantKids': wantKids,
      'willingRelocate': willingRelocate,
    };
  }

  String toJson() => json.encode(toMap());
}
