import 'package:dio/dio.dart';
import 'package:flutter_spiks_test/src/core/di/injector.dart';
import 'package:flutter_spiks_test/src/features/main_page/domain/bloc/network_handle_bloc.dart';

import '../../../core/sse/sse_client.dart';

class UnauthorizedHandleModule {
  static NetworkHandleBloc makeUnauthorizedHandleBloc() => NetworkHandleBloc(
        sseStream: getIt<Stream<Response>>(),
        connectivityStream: getIt<SSEClient>().connectivity,
      );
}
