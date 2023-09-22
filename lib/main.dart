import 'package:flutter_spiks_test/bootstrap.dart';
import 'package:flutter_spiks_test/configs/app_config.dart';

Future<void> main() async {
  await bootstrap(
    firebaseInitialization: () async {},
    flavorConfiguration: () async {
      AppConfig.configDev();
    },
  );
}
