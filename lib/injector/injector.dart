import 'package:flutter_spiks_test/injector/modules/bloc_module.dart';
import 'package:flutter_spiks_test/injector/modules/database_module.dart';
import 'package:flutter_spiks_test/injector/modules/dio_module.dart';
import 'package:flutter_spiks_test/injector/modules/repository_module.dart';
import 'package:flutter_spiks_test/injector/modules/rest_client_module.dart';
import 'package:flutter_spiks_test/injector/modules/service_module.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

class Injector {
  Injector._();
  static GetIt instance = GetIt.instance;

  static void init() {
    DioModule.setup();
    ServiceModule.init();
    RestClientModule.init();

    if (!kIsWeb) {
      DatabaseModule.init();
    }

    RepositoryModule.init();
    BlocModule.init();
  }

  static void reset() {
    instance.reset();
  }

  static void resetLazySingleton() {
    instance.resetLazySingleton();
  }
}
