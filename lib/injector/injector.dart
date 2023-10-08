import 'package:flutter_spiks_test/injector/modules/bloc_module.dart';
import 'package:flutter_spiks_test/injector/modules/service_module.dart';
import 'package:get_it/get_it.dart';

class Injector {
  Injector._();
  static GetIt instance = GetIt.instance;

  static void init() {
    ServiceModule.init();
    BlocModule.init();
  }

  static void reset() {
    instance.reset();
  }

  static void resetLazySingleton() {
    instance.resetLazySingleton();
  }
}
