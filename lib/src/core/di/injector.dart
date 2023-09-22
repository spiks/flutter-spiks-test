import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

class Injector {
  static Future<void> init() async {
    ///ASYNC INSTANCES

    await getIt.allReady(); // All async instances must be initialized

    ///SYNC INSTANCES
    // getIt.registerSingleton<Dio>(
    //   Api.instance.createDio(),
    // );
    // getIt.registerSingleton<Stream<Response>>(
    //   Api.instance.responseStream,
    // );//Depends on SessionManager (in interceptors)
  }
}
