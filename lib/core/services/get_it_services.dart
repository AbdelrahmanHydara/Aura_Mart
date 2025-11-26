import 'package:get_it/get_it.dart';
import 'package:shopx/core/services/firebase_auth_services.dart';
import 'package:shopx/core/services/firestore_services.dart';
import 'package:shopx/features/auth/data/repos/auth_repo_impl.dart';
import 'package:shopx/features/auth/domain/repos/auth_repo.dart';

import 'database_services.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<DatabaseServices>(FireStoreServices());

  getIt.registerSingleton<AuthRepo>(AuthRepoImpl(
    firebaseAuthService: getIt<FirebaseAuthService>(),
    databaseServices: getIt<DatabaseServices>(),
  ));
}