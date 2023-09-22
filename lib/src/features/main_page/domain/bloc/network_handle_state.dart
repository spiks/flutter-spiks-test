part of 'network_handle_bloc.dart';

@freezed
class NetworkHandleState with _$NetworkHandleState {
  const factory NetworkHandleState.initial() = _Initial;

  const factory NetworkHandleState.unauthorized() = _Unauthorized;

  const factory NetworkHandleState.networkStateChanged({
    required ConnectivityResult status,
  }) = _NetworkStateChanged;
}
