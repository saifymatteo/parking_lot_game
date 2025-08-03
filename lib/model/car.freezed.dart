// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Car {
  String get brand;
  String get plate;

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarCopyWith<Car> get copyWith =>
      _$CarCopyWithImpl<Car>(this as Car, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Car &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.plate, plate) || other.plate == plate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brand, plate);

  @override
  String toString() {
    return 'Car(brand: $brand, plate: $plate)';
  }
}

/// @nodoc
abstract mixin class $CarCopyWith<$Res> {
  factory $CarCopyWith(Car value, $Res Function(Car) _then) = _$CarCopyWithImpl;
  @useResult
  $Res call({String brand, String plate});
}

/// @nodoc
class _$CarCopyWithImpl<$Res> implements $CarCopyWith<$Res> {
  _$CarCopyWithImpl(this._self, this._then);

  final Car _self;
  final $Res Function(Car) _then;

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = null,
    Object? plate = null,
  }) {
    return _then(_self.copyWith(
      brand: null == brand
          ? _self.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      plate: null == plate
          ? _self.plate
          : plate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Car].
extension CarPatterns on Car {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Car value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Car() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Car value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Car():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Car value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Car() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String brand, String plate)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Car() when $default != null:
        return $default(_that.brand, _that.plate);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String brand, String plate) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Car():
        return $default(_that.brand, _that.plate);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String brand, String plate)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Car() when $default != null:
        return $default(_that.brand, _that.plate);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Car implements Car {
  _Car({required this.brand, required this.plate});

  @override
  final String brand;
  @override
  final String plate;

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CarCopyWith<_Car> get copyWith =>
      __$CarCopyWithImpl<_Car>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Car &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.plate, plate) || other.plate == plate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brand, plate);

  @override
  String toString() {
    return 'Car(brand: $brand, plate: $plate)';
  }
}

/// @nodoc
abstract mixin class _$CarCopyWith<$Res> implements $CarCopyWith<$Res> {
  factory _$CarCopyWith(_Car value, $Res Function(_Car) _then) =
      __$CarCopyWithImpl;
  @override
  @useResult
  $Res call({String brand, String plate});
}

/// @nodoc
class __$CarCopyWithImpl<$Res> implements _$CarCopyWith<$Res> {
  __$CarCopyWithImpl(this._self, this._then);

  final _Car _self;
  final $Res Function(_Car) _then;

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? brand = null,
    Object? plate = null,
  }) {
    return _then(_Car(
      brand: null == brand
          ? _self.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      plate: null == plate
          ? _self.plate
          : plate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
