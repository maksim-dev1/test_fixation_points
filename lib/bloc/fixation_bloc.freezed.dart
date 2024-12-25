// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fixation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FixationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fixationPointGeolocator,
    required TResult Function() fixationPointSensors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fixationPointGeolocator,
    TResult? Function()? fixationPointSensors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fixationPointGeolocator,
    TResult Function()? fixationPointSensors,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FixationPointGeolocator value)
        fixationPointGeolocator,
    required TResult Function(_FixationPointSensors value) fixationPointSensors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FixationPointGeolocator value)? fixationPointGeolocator,
    TResult? Function(_FixationPointSensors value)? fixationPointSensors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FixationPointGeolocator value)? fixationPointGeolocator,
    TResult Function(_FixationPointSensors value)? fixationPointSensors,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FixationEventCopyWith<$Res> {
  factory $FixationEventCopyWith(
          FixationEvent value, $Res Function(FixationEvent) then) =
      _$FixationEventCopyWithImpl<$Res, FixationEvent>;
}

/// @nodoc
class _$FixationEventCopyWithImpl<$Res, $Val extends FixationEvent>
    implements $FixationEventCopyWith<$Res> {
  _$FixationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FixationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FixationPointGeolocatorImplCopyWith<$Res> {
  factory _$$FixationPointGeolocatorImplCopyWith(
          _$FixationPointGeolocatorImpl value,
          $Res Function(_$FixationPointGeolocatorImpl) then) =
      __$$FixationPointGeolocatorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FixationPointGeolocatorImplCopyWithImpl<$Res>
    extends _$FixationEventCopyWithImpl<$Res, _$FixationPointGeolocatorImpl>
    implements _$$FixationPointGeolocatorImplCopyWith<$Res> {
  __$$FixationPointGeolocatorImplCopyWithImpl(
      _$FixationPointGeolocatorImpl _value,
      $Res Function(_$FixationPointGeolocatorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FixationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FixationPointGeolocatorImpl implements _FixationPointGeolocator {
  const _$FixationPointGeolocatorImpl();

  @override
  String toString() {
    return 'FixationEvent.fixationPointGeolocator()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FixationPointGeolocatorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fixationPointGeolocator,
    required TResult Function() fixationPointSensors,
  }) {
    return fixationPointGeolocator();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fixationPointGeolocator,
    TResult? Function()? fixationPointSensors,
  }) {
    return fixationPointGeolocator?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fixationPointGeolocator,
    TResult Function()? fixationPointSensors,
    required TResult orElse(),
  }) {
    if (fixationPointGeolocator != null) {
      return fixationPointGeolocator();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FixationPointGeolocator value)
        fixationPointGeolocator,
    required TResult Function(_FixationPointSensors value) fixationPointSensors,
  }) {
    return fixationPointGeolocator(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FixationPointGeolocator value)? fixationPointGeolocator,
    TResult? Function(_FixationPointSensors value)? fixationPointSensors,
  }) {
    return fixationPointGeolocator?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FixationPointGeolocator value)? fixationPointGeolocator,
    TResult Function(_FixationPointSensors value)? fixationPointSensors,
    required TResult orElse(),
  }) {
    if (fixationPointGeolocator != null) {
      return fixationPointGeolocator(this);
    }
    return orElse();
  }
}

abstract class _FixationPointGeolocator implements FixationEvent {
  const factory _FixationPointGeolocator() = _$FixationPointGeolocatorImpl;
}

/// @nodoc
abstract class _$$FixationPointSensorsImplCopyWith<$Res> {
  factory _$$FixationPointSensorsImplCopyWith(_$FixationPointSensorsImpl value,
          $Res Function(_$FixationPointSensorsImpl) then) =
      __$$FixationPointSensorsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FixationPointSensorsImplCopyWithImpl<$Res>
    extends _$FixationEventCopyWithImpl<$Res, _$FixationPointSensorsImpl>
    implements _$$FixationPointSensorsImplCopyWith<$Res> {
  __$$FixationPointSensorsImplCopyWithImpl(_$FixationPointSensorsImpl _value,
      $Res Function(_$FixationPointSensorsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FixationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FixationPointSensorsImpl implements _FixationPointSensors {
  const _$FixationPointSensorsImpl();

  @override
  String toString() {
    return 'FixationEvent.fixationPointSensors()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FixationPointSensorsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fixationPointGeolocator,
    required TResult Function() fixationPointSensors,
  }) {
    return fixationPointSensors();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fixationPointGeolocator,
    TResult? Function()? fixationPointSensors,
  }) {
    return fixationPointSensors?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fixationPointGeolocator,
    TResult Function()? fixationPointSensors,
    required TResult orElse(),
  }) {
    if (fixationPointSensors != null) {
      return fixationPointSensors();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FixationPointGeolocator value)
        fixationPointGeolocator,
    required TResult Function(_FixationPointSensors value) fixationPointSensors,
  }) {
    return fixationPointSensors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FixationPointGeolocator value)? fixationPointGeolocator,
    TResult? Function(_FixationPointSensors value)? fixationPointSensors,
  }) {
    return fixationPointSensors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FixationPointGeolocator value)? fixationPointGeolocator,
    TResult Function(_FixationPointSensors value)? fixationPointSensors,
    required TResult orElse(),
  }) {
    if (fixationPointSensors != null) {
      return fixationPointSensors(this);
    }
    return orElse();
  }
}

abstract class _FixationPointSensors implements FixationEvent {
  const factory _FixationPointSensors() = _$FixationPointSensorsImpl;
}

/// @nodoc
mixin _$FixationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fixation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fixation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fixation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fixation value) fixation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fixation value)? fixation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fixation value)? fixation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FixationStateCopyWith<$Res> {
  factory $FixationStateCopyWith(
          FixationState value, $Res Function(FixationState) then) =
      _$FixationStateCopyWithImpl<$Res, FixationState>;
}

/// @nodoc
class _$FixationStateCopyWithImpl<$Res, $Val extends FixationState>
    implements $FixationStateCopyWith<$Res> {
  _$FixationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FixationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FixationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FixationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FixationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fixation,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fixation,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fixation,
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
    required TResult Function(_Fixation value) fixation,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fixation value)? fixation,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fixation value)? fixation,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FixationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FixationImplCopyWith<$Res> {
  factory _$$FixationImplCopyWith(
          _$FixationImpl value, $Res Function(_$FixationImpl) then) =
      __$$FixationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FixationImplCopyWithImpl<$Res>
    extends _$FixationStateCopyWithImpl<$Res, _$FixationImpl>
    implements _$$FixationImplCopyWith<$Res> {
  __$$FixationImplCopyWithImpl(
      _$FixationImpl _value, $Res Function(_$FixationImpl) _then)
      : super(_value, _then);

  /// Create a copy of FixationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FixationImpl implements _Fixation {
  const _$FixationImpl();

  @override
  String toString() {
    return 'FixationState.fixation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FixationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fixation,
  }) {
    return fixation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fixation,
  }) {
    return fixation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fixation,
    required TResult orElse(),
  }) {
    if (fixation != null) {
      return fixation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fixation value) fixation,
  }) {
    return fixation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fixation value)? fixation,
  }) {
    return fixation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fixation value)? fixation,
    required TResult orElse(),
  }) {
    if (fixation != null) {
      return fixation(this);
    }
    return orElse();
  }
}

abstract class _Fixation implements FixationState {
  const factory _Fixation() = _$FixationImpl;
}
