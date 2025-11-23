import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopx/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity  {

  UserModel({
    required super.id,
    required super.email,
    required super.name,
    required super.image,
    required super.phoneNumber,
  });

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      id: user.uid,
      email: user.email ?? '',
      name: user.displayName ?? '',
      image: user.photoURL ?? '',
      phoneNumber: user.phoneNumber ?? '',
    );
  }
}