import 'package:get_it/get_it.dart';

import '../../features/auth/data/auth_repo_impl.dart';
import '../../features/auth/domain/auth_repo.dart';

final GetIt servicesLocator = GetIt.instance;

class ServicesLocator {
  void setupServiceLocator() {
    servicesLocator.registerLazySingleton<AuthRepo>(() {
      return AuthRepoImpl();
    });
  }
}
