// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_handle_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkHandleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function(ConnectivityResult status) changeNetworkState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
    TResult? Function(ConnectivityResult status)? changeNetworkState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function(ConnectivityResult status)? changeNetworkState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Logout value) logout,
    required TResult Function(_ChangeNetworkState value) changeNetworkState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Logout value)? logout,
    TResult? Function(_ChangeNetworkState value)? changeNetworkState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Logout value)? logout,
    TResult Function(_ChangeNetworkState value)? changeNetworkState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkHandleEventCopyWith<$Res> {
  factory $NetworkHandleEventCopyWith(
          NetworkHandleEvent value, $Res Function(NetworkHandleEvent) then) =
      _$NetworkHandleEventCopyWithImpl<$Res, NetworkHandleEvent>;
}

/// @nodoc
class _$NetworkHandleEventCopyWithImpl<$Res, $Val extends NetworkHandleEvent>
    implements $NetworkHandleEventCopyWith<$Res> {
  _$NetworkHandleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$NetworkHandleEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'NetworkHandleEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function(ConnectivityResult status) changeNetworkState,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
    TResult? Function(ConnectivityResult status)? changeNetworkState,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function(ConnectivityResult status)? changeNetworkState,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Logout value) logout,
    required TResult Function(_ChangeNetworkState value) changeNetworkState,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Logout value)? logout,
    TResult? Function(_ChangeNetworkState value)? changeNetworkState,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Logout value)? logout,
    TResult Function(_ChangeNetworkState value)? changeNetworkState,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements NetworkHandleEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
abstract class _$$_ChangeNetworkStateCopyWith<$Res> {
  factory _$$_ChangeNetworkStateCopyWith(_$_ChangeNetworkState value,
          $Res Function(_$_ChangeNetworkState) then) =
      __$$_ChangeNetworkStateCopyWithImpl<$Res>;
  @useResult
  $Res call({ConnectivityResult status});
}

/// @nodoc
class __$$_ChangeNetworkStateCopyWithImpl<$Res>
    extends _$NetworkHandleEventCopyWithImpl<$Res, _$_ChangeNetworkState>
    implements _$$_ChangeNetworkStateCopyWith<$Res> {
  __$$_ChangeNetworkStateCopyWithImpl(
      _$_ChangeNetworkState _value, $Res Function(_$_ChangeNetworkState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_ChangeNetworkState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult,
    ));
  }
}

/// @nodoc

class _$_ChangeNetworkState implements _ChangeNetworkState {
  const _$_ChangeNetworkState({required this.status});

  @override
  final ConnectivityResult status;

  @override
  String toString() {
    return 'NetworkHandleEvent.changeNetworkState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeNetworkState &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeNetworkStateCopyWith<_$_ChangeNetworkState> get copyWith =>
      __$$_ChangeNetworkStateCopyWithImpl<_$_ChangeNetworkState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function(ConnectivityResult status) changeNetworkState,
  }) {
    return changeNetworkState(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
    TResult? Function(ConnectivityResult status)? changeNetworkState,
  }) {
    return changeNetworkState?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function(ConnectivityResult status)? changeNetworkState,
    required TResult orElse(),
  }) {
    if (changeNetworkState != null) {
      return changeNetworkState(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Logout value) logout,
    required TResult Function(_ChangeNetworkState value) changeNetworkState,
  }) {
    return changeNetworkState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Logout value)? logout,
    TResult? Function(_ChangeNetworkState value)? changeNetworkState,
  }) {
    return changeNetworkState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Logout value)? logout,
    TResult Function(_ChangeNetworkState value)? changeNetworkState,
    required TResult orElse(),
  }) {
    if (changeNetworkState != null) {
      return changeNetworkState(this);
    }
    return orElse();
  }
}

abstract class _ChangeNetworkState implements NetworkHandleEvent {
  const factory _ChangeNetworkState(
      {required final ConnectivityResult status}) = _$_ChangeNetworkState;

  ConnectivityResult get status;
  @JsonKey(ignore: true)
  _$$_ChangeNetworkStateCopyWith<_$_ChangeNetworkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NetworkHandleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthorized,
    required TResult Function(ConnectivityResult status) networkStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthorized,
    TResult? Function(ConnectivityResult status)? networkStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function(ConnectivityResult status)? networkStateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_NetworkStateChanged value) networkStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_NetworkStateChanged value)? networkStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_NetworkStateChanged value)? networkStateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkHandleStateCopyWith<$Res> {
  factory $NetworkHandleStateCopyWith(
          NetworkHandleState value, $Res Function(NetworkHandleState) then) =
      _$NetworkHandleStateCopyWithImpl<$Res, NetworkHandleState>;
}

/// @nodoc
class _$NetworkHandleStateCopyWithImpl<$Res, $Val extends NetworkHandleState>
    implements $NetworkHandleStateCopyWith<$Res> {
  _$NetworkHandleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$NetworkHandleStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NetworkHandleState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthorized,
    required TResult Function(ConnectivityResult status) networkStateChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthorized,
    TResult? Function(ConnectivityResult status)? networkStateChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function(ConnectivityResult status)? networkStateChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_NetworkStateChanged value) networkStateChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_NetworkStateChanged value)? networkStateChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_NetworkStateChanged value)? networkStateChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NetworkHandleState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_UnauthorizedCopyWith<$Res> {
  factory _$$_UnauthorizedCopyWith(
          _$_Unauthorized value, $Res Function(_$_Unauthorized) then) =
      __$$_UnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnauthorizedCopyWithImpl<$Res>
    extends _$NetworkHandleStateCopyWithImpl<$Res, _$_Unauthorized>
    implements _$$_UnauthorizedCopyWith<$Res> {
  __$$_UnauthorizedCopyWithImpl(
      _$_Unauthorized _value, $Res Function(_$_Unauthorized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Unauthorized implements _Unauthorized {
  const _$_Unauthorized();

  @override
  String toString() {
    return 'NetworkHandleState.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthorized,
    required TResult Function(ConnectivityResult status) networkStateChanged,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthorized,
    TResult? Function(ConnectivityResult status)? networkStateChanged,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function(ConnectivityResult status)? networkStateChanged,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_NetworkStateChanged value) networkStateChanged,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_NetworkStateChanged value)? networkStateChanged,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_NetworkStateChanged value)? networkStateChanged,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements NetworkHandleState {
  const factory _Unauthorized() = _$_Unauthorized;
}

/// @nodoc
abstract class _$$_NetworkStateChangedCopyWith<$Res> {
  factory _$$_NetworkStateChangedCopyWith(_$_NetworkStateChanged value,
          $Res Function(_$_NetworkStateChanged) then) =
      __$$_NetworkStateChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({ConnectivityResult status});
}

/// @nodoc
class __$$_NetworkStateChangedCopyWithImpl<$Res>
    extends _$NetworkHandleStateCopyWithImpl<$Res, _$_NetworkStateChanged>
    implements _$$_NetworkStateChangedCopyWith<$Res> {
  __$$_NetworkStateChangedCopyWithImpl(_$_NetworkStateChanged _value,
      $Res Function(_$_NetworkStateChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_NetworkStateChanged(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult,
    ));
  }
}

/// @nodoc

class _$_NetworkStateChanged implements _NetworkStateChanged {
  const _$_NetworkStateChanged({required this.status});

  @override
  final ConnectivityResult status;

  @override
  String toString() {
    return 'NetworkHandleState.networkStateChanged(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkStateChanged &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NetworkStateChangedCopyWith<_$_NetworkStateChanged> get copyWith =>
      __$$_NetworkStateChangedCopyWithImpl<_$_NetworkStateChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthorized,
    required TResult Function(ConnectivityResult status) networkStateChanged,
  }) {
    return networkStateChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthorized,
    TResult? Function(ConnectivityResult status)? networkStateChanged,
  }) {
    return networkStateChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function(ConnectivityResult status)? networkStateChanged,
    required TResult orElse(),
  }) {
    if (networkStateChanged != null) {
      return networkStateChanged(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_NetworkStateChanged value) networkStateChanged,
  }) {
    return networkStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_NetworkStateChanged value)? networkStateChanged,
  }) {
    return networkStateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_NetworkStateChanged value)? networkStateChanged,
    required TResult orElse(),
  }) {
    if (networkStateChanged != null) {
      return networkStateChanged(this);
    }
    return orElse();
  }
}

abstract class _NetworkStateChanged implements NetworkHandleState {
  const factory _NetworkStateChanged(
      {required final ConnectivityResult status}) = _$_NetworkStateChanged;

  ConnectivityResult get status;
  @JsonKey(ignore: true)
  _$$_NetworkStateChangedCopyWith<_$_NetworkStateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
