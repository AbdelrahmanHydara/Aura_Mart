import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopx/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity  {

  UserModel({
    required super.uId,
    required super.email,
    required super.name,
    required super.image,
    required super.phoneNumber,
  });

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      uId: user.uid,
      email: user.email ?? '',
      name: user.displayName ?? '',
      image: user.photoURL ?? '',
      phoneNumber: user.phoneNumber ?? '',
    );
  }

  factory UserModel.formJson(Map<String, dynamic> json) {
    return UserModel(
      uId: json['uId'],
      email: json['email'],
      name: json['name'],
      image: json['image'],
      phoneNumber: json['phoneNumber'],
    );
  }
}