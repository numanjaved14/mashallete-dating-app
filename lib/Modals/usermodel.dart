// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class UserModel {
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
  List<String> likedBy;
  List<String> likedTo;
  String profession;
  String religion;
  String smoking;
  String tagline;
  String uid;
  String wantKids;
  String willingRelocate;
  String age;
  UserModel({
    required this.aboutMe,
    required this.alcohol,
    required this.dob,
    required this.education,
    required this.ethninity,
    required this.everBeenMarried,
    required this.fullName,
    required this.gender,
    required this.haveChildren,
    required this.heightFeet,
    required this.heigthInch,
    required this.languages,
    this.lastName,
    required this.latitude,
    required this.likes,
    required this.likesIndex,
    required this.location,
    required this.longitude,
    required this.lookingfor,
    required this.phoneNumber,
    required this.photoURL,
    required this.likedBy,
    required this.likedTo,
    required this.profession,
    required this.religion,
    required this.smoking,
    required this.tagline,
    required this.uid,
    required this.wantKids,
    required this.willingRelocate,
    required this.age,
  });

  UserModel copyWith({
    String? aboutMe,
    String? alcohol,
    String? dob,
    String? education,
    List<String>? ethninity,
    String? everBeenMarried,
    String? fullName,
    String? gender,
    String? haveChildren,
    String? heightFeet,
    String? heigthInch,
    List<String>? languages,
    String? lastName,
    double? latitude,
    List<String>? likes,
    List<String>? likesIndex,
    String? location,
    double? longitude,
    String? lookingfor,
    String? phoneNumber,
    List<String>? photoURL,
    List<String>? likedBy,
    List<String>? likedTo,
    String? profession,
    String? religion,
    String? smoking,
    String? tagline,
    String? uid,
    String? wantKids,
    String? willingRelocate,
    String? age,
  }) {
    return UserModel(
      aboutMe: aboutMe ?? this.aboutMe,
      alcohol: alcohol ?? this.alcohol,
      dob: dob ?? this.dob,
      education: education ?? this.education,
      ethninity: ethninity ?? this.ethninity,
      everBeenMarried: everBeenMarried ?? this.everBeenMarried,
      fullName: fullName ?? this.fullName,
      gender: gender ?? this.gender,
      haveChildren: haveChildren ?? this.haveChildren,
      heightFeet: heightFeet ?? this.heightFeet,
      heigthInch: heigthInch ?? this.heigthInch,
      languages: languages ?? this.languages,
      lastName: lastName ?? this.lastName,
      latitude: latitude ?? this.latitude,
      likes: likes ?? this.likes,
      likesIndex: likesIndex ?? this.likesIndex,
      location: location ?? this.location,
      longitude: longitude ?? this.longitude,
      lookingfor: lookingfor ?? this.lookingfor,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      photoURL: photoURL ?? this.photoURL,
      likedBy: likedBy ?? this.likedBy,
      likedTo: likedTo ?? this.likedTo,
      profession: profession ?? this.profession,
      religion: religion ?? this.religion,
      smoking: smoking ?? this.smoking,
      tagline: tagline ?? this.tagline,
      uid: uid ?? this.uid,
      wantKids: wantKids ?? this.wantKids,
      willingRelocate: willingRelocate ?? this.willingRelocate,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aboutMe': aboutMe,
      'alcohol': alcohol,
      'dob': dob,
      'education': education,
      'ethninity': ethninity,
      'everBeenMarried': everBeenMarried,
      'fullName': fullName,
      'gender': gender,
      'haveChildren': haveChildren,
      'heightFeet': heightFeet,
      'heigthInch': heigthInch,
      'languages': languages,
      'lastName': lastName,
      'latitude': latitude,
      'likes': likes,
      'likesIndex': likesIndex,
      'location': location,
      'longitude': longitude,
      'lookingfor': lookingfor,
      'phoneNumber': phoneNumber,
      'photoURL': photoURL,
      'likedBy': likedBy,
      'likedTo': likedTo,
      'profession': profession,
      'religion': religion,
      'smoking': smoking,
      'tagline': tagline,
      'uid': uid,
      'wantKids': wantKids,
      'willingRelocate': willingRelocate,
      'age': age,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      aboutMe: map['aboutMe'] as String,
      alcohol: map['alcohol'] as String,
      dob: map['dob'] as String,
      education: map['education'] as String,
      ethninity: List<String>.from(map['ethninity'] as List<String>),
      everBeenMarried: map['everBeenMarried'] as String,
      fullName: map['fullName'] as String,
      gender: map['gender'] as String,
      haveChildren: map['haveChildren'] as String,
      heightFeet: map['heightFeet'] as String,
      heigthInch: map['heigthInch'] as String,
      languages: List<String>.from(map['languages'] as List<String>),
      lastName: map['lastName'] != null ? map['lastName'] as String : null,
      latitude: map['latitude'] as double,
      likes: List<String>.from(map['likes'] as List<String>),
      likesIndex: List<String>.from(map['likesIndex'] as List<String>),
      location: map['location'] as String,
      longitude: map['longitude'] as double,
      lookingfor: map['lookingfor'] as String,
      phoneNumber: map['phoneNumber'] as String,
      photoURL: List<String>.from(map['photoURL'] as List<String>),
      likedBy: List<String>.from(map['likedBy'] as List<String>),
      likedTo: List<String>.from(map['likedTo'] as List<String>),
      profession: map['profession'] as String,
      religion: map['religion'] as String,
      smoking: map['smoking'] as String,
      tagline: map['tagline'] as String,
      uid: map['uid'] as String,
      wantKids: map['wantKids'] as String,
      willingRelocate: map['willingRelocate'] as String,
      age: map['age'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(aboutMe: $aboutMe, alcohol: $alcohol, dob: $dob, education: $education, ethninity: $ethninity, everBeenMarried: $everBeenMarried, fullName: $fullName, gender: $gender, haveChildren: $haveChildren, heightFeet: $heightFeet, heigthInch: $heigthInch, languages: $languages, lastName: $lastName, latitude: $latitude, likes: $likes, likesIndex: $likesIndex, location: $location, longitude: $longitude, lookingfor: $lookingfor, phoneNumber: $phoneNumber, photoURL: $photoURL, likedBy: $likedBy, likedTo: $likedTo, profession: $profession, religion: $religion, smoking: $smoking, tagline: $tagline, uid: $uid, wantKids: $wantKids, willingRelocate: $willingRelocate, age: $age)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.aboutMe == aboutMe &&
        other.alcohol == alcohol &&
        other.dob == dob &&
        other.education == education &&
        listEquals(other.ethninity, ethninity) &&
        other.everBeenMarried == everBeenMarried &&
        other.fullName == fullName &&
        other.gender == gender &&
        other.haveChildren == haveChildren &&
        other.heightFeet == heightFeet &&
        other.heigthInch == heigthInch &&
        listEquals(other.languages, languages) &&
        other.lastName == lastName &&
        other.latitude == latitude &&
        listEquals(other.likes, likes) &&
        listEquals(other.likesIndex, likesIndex) &&
        other.location == location &&
        other.longitude == longitude &&
        other.lookingfor == lookingfor &&
        other.phoneNumber == phoneNumber &&
        listEquals(other.photoURL, photoURL) &&
        listEquals(other.likedBy, likedBy) &&
        listEquals(other.likedTo, likedTo) &&
        other.profession == profession &&
        other.religion == religion &&
        other.smoking == smoking &&
        other.tagline == tagline &&
        other.uid == uid &&
        other.wantKids == wantKids &&
        other.willingRelocate == willingRelocate &&
        other.age == age;
  }

  @override
  int get hashCode {
    return aboutMe.hashCode ^
        alcohol.hashCode ^
        dob.hashCode ^
        education.hashCode ^
        ethninity.hashCode ^
        everBeenMarried.hashCode ^
        fullName.hashCode ^
        gender.hashCode ^
        haveChildren.hashCode ^
        heightFeet.hashCode ^
        heigthInch.hashCode ^
        languages.hashCode ^
        lastName.hashCode ^
        latitude.hashCode ^
        likes.hashCode ^
        likesIndex.hashCode ^
        location.hashCode ^
        longitude.hashCode ^
        lookingfor.hashCode ^
        phoneNumber.hashCode ^
        photoURL.hashCode ^
        likedBy.hashCode ^
        likedTo.hashCode ^
        profession.hashCode ^
        religion.hashCode ^
        smoking.hashCode ^
        tagline.hashCode ^
        uid.hashCode ^
        wantKids.hashCode ^
        willingRelocate.hashCode ^
        age.hashCode;
  }
}
