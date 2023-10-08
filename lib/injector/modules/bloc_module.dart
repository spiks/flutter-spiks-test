import 'package:flutter_spiks_test/features/app/bloc/app_bloc.dart';
import 'package:flutter_spiks_test/injector/injector.dart';

class BlocModule {
  BlocModule._();

  static void init() {
    final injector = Injector.instance;

    injector
      .registerLazySingleton<AppBloc>(
        () => AppBloc(
          appService: injector(),
          logService: injector(),
        ),
      );
  }
}
