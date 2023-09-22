import 'package:flutter_spiks_test/data/repositories/dog_image_random/remote/dog_image_random_repository.dart';
import 'package:flutter_spiks_test/data/repositories/dog_image_random/remote/dog_image_random_repository_impl.dart';
import 'package:flutter_spiks_test/injector/injector.dart';

class RepositoryModule {
  RepositoryModule._();

  static void init() {
    final injector = Injector.instance;

    injector.registerFactory<DogImageRandomRepository>(
      () => DogImageRandomRepositoryImpl(
        dogApiClient: injector(),
      ),
    );
  }
}
