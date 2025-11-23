import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopx/core/errors/exceptions.dart';
import 'package:shopx/core/errors/failures.dart';
import 'package:shopx/core/services/firebase_auth_services.dart';
import 'package:shopx/features/auth/data/model/user_model.dart';
import 'package:shopx/features/auth/domain/entities/user_entity.dart';
import 'package:shopx/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl(this.firebaseAuthService);

  // Create User with Email and Password
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
}) async {
   try {
     var user =  await firebaseAuthService.createUserWithEmailAndPassword(
       name: name,
       email: email,
       password: password,
     );
     return right(UserModel.fromFirebaseUser(user),);
   } on CustomException catch(e) {
     return Left(ServerFailure(e.message));
   } catch (e) {
     print("Repository Catch: ${e.toString()}");
     return Left(ServerFailure("An unexpected error occurred in the data layer."));
   }
  }

  // Login User with Email and Password
  @override
  Future<Either<Failure, UserEntity>> loginUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      var user =  await firebaseAuthService.loginUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromFirebaseUser(user),);
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      print("Repository Catch: ${e.toString()}");
      return Left(ServerFailure("An unexpected error occurred in the data layer."));
    }
  }

// Create User with Google
  @override
  Future<Either<Failure, UserEntity>> createUserWithGoogle() async {
    try {
      var user = await firebaseAuthService.createUserWithGoogle();
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      print("Repository Catch: ${e.toString()}");
      return Left(ServerFailure("An unexpected error occurred in the data layer."));
    }

  }

  // Create User with Facebook
  @override
  Future<Either<Failure, UserEntity>> createUserWithFacebook() async {
   try {
     var user = await firebaseAuthService.createUserWithFacebook();
      return right(UserModel.fromFirebaseUser(user as User));
   } on CustomException catch (e) {
     return Left(ServerFailure(e.message));
   } catch (e) {
     print("Repository Catch: ${e.toString()}");
     return Left(ServerFailure("An unexpected error occurred in the data layer."));
   }
  }

  // Logout User
  @override
  Future<Either<Failure, Unit>> logoutUser() async {
    try {
      await firebaseAuthService.logoutUser();
      return right(unit);
    } catch (e) {
      print("Repository Catch: ${e.toString()}");
      return Left(ServerFailure("An unexpected error occurred in the data layer."));
    }
  }
}