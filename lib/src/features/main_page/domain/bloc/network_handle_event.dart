part of 'network_handle_bloc.dart';

@freezed
class NetworkHandleEvent with _$NetworkHandleEvent {
  const factory NetworkHandleEvent.logout() = _Logout;

  const factory NetworkHandleEvent.changeNetworkState({required ConnectivityResult status}) = _ChangeNetworkState;
}
