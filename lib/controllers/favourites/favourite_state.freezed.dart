// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'favourite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavouriteStateTearOff {
  const _$FavouriteStateTearOff();

  _FavouriteStateLoading loading() {
    return const _FavouriteStateLoading();
  }

  _FavouriteStateData data(List<AnimeChan> chan) {
    return _FavouriteStateData(
      chan,
    );
  }

  _FavouriteStateError error(String error) {
    return _FavouriteStateError(
      error,
    );
  }
}

/// @nodoc
const $FavouriteState = _$FavouriteStateTearOff();

/// @nodoc
mixin _$FavouriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AnimeChan> chan) data,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AnimeChan> chan)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavouriteStateLoading value) loading,
    required TResult Function(_FavouriteStateData value) data,
    required TResult Function(_FavouriteStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavouriteStateLoading value)? loading,
    TResult Function(_FavouriteStateData value)? data,
    TResult Function(_FavouriteStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteStateCopyWith<$Res> {
  factory $FavouriteStateCopyWith(
          FavouriteState value, $Res Function(FavouriteState) then) =
      _$FavouriteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavouriteStateCopyWithImpl<$Res>
    implements $FavouriteStateCopyWith<$Res> {
  _$FavouriteStateCopyWithImpl(this._value, this._then);

  final FavouriteState _value;
  // ignore: unused_field
  final $Res Function(FavouriteState) _then;
}

/// @nodoc
abstract class _$FavouriteStateLoadingCopyWith<$Res> {
  factory _$FavouriteStateLoadingCopyWith(_FavouriteStateLoading value,
          $Res Function(_FavouriteStateLoading) then) =
      __$FavouriteStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$FavouriteStateLoadingCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res>
    implements _$FavouriteStateLoadingCopyWith<$Res> {
  __$FavouriteStateLoadingCopyWithImpl(_FavouriteStateLoading _value,
      $Res Function(_FavouriteStateLoading) _then)
      : super(_value, (v) => _then(v as _FavouriteStateLoading));

  @override
  _FavouriteStateLoading get _value => super._value as _FavouriteStateLoading;
}

/// @nodoc

class _$_FavouriteStateLoading implements _FavouriteStateLoading {
  const _$_FavouriteStateLoading();

  @override
  String toString() {
    return 'FavouriteState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FavouriteStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AnimeChan> chan) data,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AnimeChan> chan)? data,
    TResult Function(String error)? error,
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
    required TResult Function(_FavouriteStateLoading value) loading,
    required TResult Function(_FavouriteStateData value) data,
    required TResult Function(_FavouriteStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavouriteStateLoading value)? loading,
    TResult Function(_FavouriteStateData value)? data,
    TResult Function(_FavouriteStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FavouriteStateLoading implements FavouriteState {
  const factory _FavouriteStateLoading() = _$_FavouriteStateLoading;
}

/// @nodoc
abstract class _$FavouriteStateDataCopyWith<$Res> {
  factory _$FavouriteStateDataCopyWith(
          _FavouriteStateData value, $Res Function(_FavouriteStateData) then) =
      __$FavouriteStateDataCopyWithImpl<$Res>;
  $Res call({List<AnimeChan> chan});
}

/// @nodoc
class __$FavouriteStateDataCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res>
    implements _$FavouriteStateDataCopyWith<$Res> {
  __$FavouriteStateDataCopyWithImpl(
      _FavouriteStateData _value, $Res Function(_FavouriteStateData) _then)
      : super(_value, (v) => _then(v as _FavouriteStateData));

  @override
  _FavouriteStateData get _value => super._value as _FavouriteStateData;

  @override
  $Res call({
    Object? chan = freezed,
  }) {
    return _then(_FavouriteStateData(
      chan == freezed
          ? _value.chan
          : chan // ignore: cast_nullable_to_non_nullable
              as List<AnimeChan>,
    ));
  }
}

/// @nodoc

class _$_FavouriteStateData implements _FavouriteStateData {
  const _$_FavouriteStateData(this.chan);

  @override
  final List<AnimeChan> chan;

  @override
  String toString() {
    return 'FavouriteState.data(chan: $chan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavouriteStateData &&
            (identical(other.chan, chan) ||
                const DeepCollectionEquality().equals(other.chan, chan)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chan);

  @JsonKey(ignore: true)
  @override
  _$FavouriteStateDataCopyWith<_FavouriteStateData> get copyWith =>
      __$FavouriteStateDataCopyWithImpl<_FavouriteStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AnimeChan> chan) data,
    required TResult Function(String error) error,
  }) {
    return data(chan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AnimeChan> chan)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(chan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavouriteStateLoading value) loading,
    required TResult Function(_FavouriteStateData value) data,
    required TResult Function(_FavouriteStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavouriteStateLoading value)? loading,
    TResult Function(_FavouriteStateData value)? data,
    TResult Function(_FavouriteStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _FavouriteStateData implements FavouriteState {
  const factory _FavouriteStateData(List<AnimeChan> chan) =
      _$_FavouriteStateData;

  List<AnimeChan> get chan => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FavouriteStateDataCopyWith<_FavouriteStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FavouriteStateErrorCopyWith<$Res> {
  factory _$FavouriteStateErrorCopyWith(_FavouriteStateError value,
          $Res Function(_FavouriteStateError) then) =
      __$FavouriteStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$FavouriteStateErrorCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res>
    implements _$FavouriteStateErrorCopyWith<$Res> {
  __$FavouriteStateErrorCopyWithImpl(
      _FavouriteStateError _value, $Res Function(_FavouriteStateError) _then)
      : super(_value, (v) => _then(v as _FavouriteStateError));

  @override
  _FavouriteStateError get _value => super._value as _FavouriteStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_FavouriteStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FavouriteStateError implements _FavouriteStateError {
  const _$_FavouriteStateError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'FavouriteState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavouriteStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$FavouriteStateErrorCopyWith<_FavouriteStateError> get copyWith =>
      __$FavouriteStateErrorCopyWithImpl<_FavouriteStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AnimeChan> chan) data,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AnimeChan> chan)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavouriteStateLoading value) loading,
    required TResult Function(_FavouriteStateData value) data,
    required TResult Function(_FavouriteStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavouriteStateLoading value)? loading,
    TResult Function(_FavouriteStateData value)? data,
    TResult Function(_FavouriteStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FavouriteStateError implements FavouriteState {
  const factory _FavouriteStateError(String error) = _$_FavouriteStateError;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FavouriteStateErrorCopyWith<_FavouriteStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
