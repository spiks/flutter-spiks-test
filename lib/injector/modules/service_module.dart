import 'package:flutter_spiks_test/injector/injector.dart';
import 'package:flutter_spiks_test/services/app_service/app_service.dart';
import 'package:flutter_spiks_test/services/app_service/app_service_impl.dart';
import 'package:flutter_spiks_test/services/crashlytics_service/crashlytics_service.dart';
import 'package:flutter_spiks_test/services/crashlytics_service/firebase_crashlytics_service.dart';
import 'package:flutter_spiks_test/services/local_storage_service/local_storage_service.dart';
import 'package:flutter_spiks_test/services/local_storage_service/shared_preferences_service.dart';
import 'package:flutter_spiks_test/services/log_service/debug_log_service.dart';
import 'package:flutter_spiks_test/services/log_service/log_service.dart';

class ServiceModule {
  ServiceModule._();

  static void init() {
    final injector = Injector.instance;

    injector
      ..registerSingletonAsync<CrashlyticsService>(() async {
        return FirebaseCrashlyticsService();
      })
      ..registerFactory<LogService>(DebugLogService.new)
      ..registerSingleton<LocalStorageService>(
        SharedPreferencesService(
          logService: injector(),
        ),
        signalsReady: true,
      )
      ..registerSingleton<AppService>(
        AppServiceImpl(
          localStorageService: injector(),
        ),
      );
  }
}
