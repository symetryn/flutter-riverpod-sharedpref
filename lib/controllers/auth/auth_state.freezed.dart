// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthLoading loading() {
    return const AuthLoading();
  }

  AuthStateError error(String? err) {
    return AuthStateError(
      err,
    );
  }

  AuthStateUser user(User? user) {
    return AuthStateUser(
      user,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? err) error,
    required TResult Function(User? user) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? err)? error,
    TResult Function(User? user)? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateUser value) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateUser value)? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $AuthLoadingCopyWith<$Res> {
  factory $AuthLoadingCopyWith(
          AuthLoading value, $Res Function(AuthLoading) then) =
      _$AuthLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthLoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthLoadingCopyWith<$Res> {
  _$AuthLoadingCopyWithImpl(
      AuthLoading _value, $Res Function(AuthLoading) _then)
      : super(_value, (v) => _then(v as AuthLoading));

  @override
  AuthLoading get _value => super._value as AuthLoading;
}

/// @nodoc

class _$AuthLoading implements AuthLoading {
  const _$AuthLoading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? err) error,
    required TResult Function(User? user) user,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? err)? error,
    TResult Function(User? user)? user,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateUser value) user,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateUser value)? user,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthLoading implements AuthState {
  const factory AuthLoading() = _$AuthLoading;
}

/// @nodoc
abstract class $AuthStateErrorCopyWith<$Res> {
  factory $AuthStateErrorCopyWith(
          AuthStateError value, $Res Function(AuthStateError) then) =
      _$AuthStateErrorCopyWithImpl<$Res>;
  $Res call({String? err});
}

/// @nodoc
class _$AuthStateErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateErrorCopyWith<$Res> {
  _$AuthStateErrorCopyWithImpl(
      AuthStateError _value, $Res Function(AuthStateError) _then)
      : super(_value, (v) => _then(v as AuthStateError));

  @override
  AuthStateError get _value => super._value as AuthStateError;

  @override
  $Res call({
    Object? err = freezed,
  }) {
    return _then(AuthStateError(
      err == freezed
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthStateError implements AuthStateError {
  const _$AuthStateError(this.err);

  @override
  final String? err;

  @override
  String toString() {
    return 'AuthState.error(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthStateError &&
            (identical(other.err, err) ||
                const DeepCollectionEquality().equals(other.err, err)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(err);

  @JsonKey(ignore: true)
  @override
  $AuthStateErrorCopyWith<AuthStateError> get copyWith =>
      _$AuthStateErrorCopyWithImpl<AuthStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? err) error,
    required TResult Function(User? user) user,
  }) {
    return error(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? err)? error,
    TResult Function(User? user)? user,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateUser value) user,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateUser value)? user,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthStateError implements AuthState {
  const factory AuthStateError(String? err) = _$AuthStateError;

  String? get err => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStateErrorCopyWith<AuthStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateUserCopyWith<$Res> {
  factory $AuthStateUserCopyWith(
          AuthStateUser value, $Res Function(AuthStateUser) then) =
      _$AuthStateUserCopyWithImpl<$Res>;
  $Res call({User? user});
}

/// @nodoc
class _$AuthStateUserCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateUserCopyWith<$Res> {
  _$AuthStateUserCopyWithImpl(
      AuthStateUser _value, $Res Function(AuthStateUser) _then)
      : super(_value, (v) => _then(v as AuthStateUser));

  @override
  AuthStateUser get _value => super._value as AuthStateUser;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AuthStateUser(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$AuthStateUser implements AuthStateUser {
  const _$AuthStateUser(this.user);

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthState.user(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthStateUser &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $AuthStateUserCopyWith<AuthStateUser> get copyWith =>
      _$AuthStateUserCopyWithImpl<AuthStateUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? err) error,
    required TResult Function(User? user) user,
  }) {
    return user(this.user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? err)? error,
    TResult Function(User? user)? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this.user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateUser value) user,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateUser value)? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class AuthStateUser implements AuthState {
  const factory AuthStateUser(User? user) = _$AuthStateUser;

  User? get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStateUserCopyWith<AuthStateUser> get copyWith =>
      throw _privateConstructorUsedError;
}
