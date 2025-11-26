import 'package:dartz/dartz.dart';
import 'package:shopx/core/errors/failures.dart';
import 'package:shopx/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {

  // Create User with Email and Password
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  });

  // Login User with Email and Password
  Future<Either<Failure, UserEntity>> loginUserWithEmailAndPassword({
    required String email,
    required String password,
  });

  // Login User with Google
  Future<Either<Failure, UserEntity>> loginUserWithGoogle();

  // Login User with Facebook
  Future<Either<Failure, UserEntity>> loginUserWithFacebook();

  // Add User to Database
  Future addUserToDatabase({
    required UserEntity user,
  });

  // Get User from Database
  Future<UserEntity> getUserFromDatabase({
    required String uid,
  });

  // Logout User
  Future<Either<Failure, Unit>> logoutUser();
}