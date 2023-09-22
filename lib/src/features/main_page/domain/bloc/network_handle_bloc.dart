import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_spiks_test/src/core/network/exceptions/api_exceptions/custom_exceptions.dart';

part 'network_handle_bloc.freezed.dart';

part 'network_handle_event.dart';

part 'network_handle_state.dart';

class NetworkHandleBloc extends Bloc<NetworkHandleEvent, NetworkHandleState> {
  NetworkHandleBloc({
    required this.sseStream,
    required this.connectivityStream,
  }) : super(const _Initial()) {
    _sseSubscription = sseStream.listen(
      (event) {
        // log('handled event', name: 'NetworkHandleBloc');
      },
      onError: (e) {
        if (e is UnauthorizedError || e is IncorrectApiMethodCall) {
          add(const _Logout());
        }
      },
    );

    _connectivitySubscription = connectivityStream.listen(
      (event) {
        add(_ChangeNetworkState(status: event));
      },
    );
    on<_Logout>(_onLogout);
    on<_ChangeNetworkState>(_onChangeNetworkState);
  }

  final Stream<Response> sseStream;
  final Stream<ConnectivityResult> connectivityStream;
  late final StreamSubscription _sseSubscription;
  late final StreamSubscription _connectivitySubscription;

  Future<void> _onLogout(_Logout event, Emitter emit) async {
    emit(const _Unauthorized());
  }

  Future<void> _onChangeNetworkState(
    _ChangeNetworkState event,
    Emitter emit,
  ) async {
    emit(
      _NetworkStateChanged(
        status: event.status,
      ),
    );
  }

  @override
  Future<void> close() {
    _sseSubscription.cancel();
    _connectivitySubscription.cancel();
    return super.close();
  }
}
