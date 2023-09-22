import 'package:flutter_spiks_test/injector/injector.dart';
import 'package:flutter_spiks_test/injector/modules/dio_module.dart';
import 'package:rest_client/rest_client.dart';

class RestClientModule {
  RestClientModule._();

  static void init() {
    final injector = Injector.instance;

    injector.registerFactory<DogApiClient>(
      () => DogApiClient(
        injector(instanceName: DioModule.dioInstanceName),
      ),
    );
  }
}
