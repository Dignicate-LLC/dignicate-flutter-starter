// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cursor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Cursor<T> {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Cursor<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Cursor<$T>()';
  }
}

/// @nodoc
class $CursorCopyWith<T, $Res> {
  $CursorCopyWith(Cursor<T> _, $Res Function(Cursor<T>) __);
}

/// Adds pattern-matching-related methods to [Cursor].
extension CursorPatterns<T> on Cursor<T> {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(First<T> value)? first,
    TResult Function(Next<T> value)? next,
    TResult Function(End<T> value)? end,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case First() when first != null:
        return first(_that);
      case Next() when next != null:
        return next(_that);
      case End() when end != null:
        return end(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(First<T> value) first,
    required TResult Function(Next<T> value) next,
    required TResult Function(End<T> value) end,
  }) {
    final _that = this;
    switch (_that) {
      case First():
        return first(_that);
      case Next():
        return next(_that);
      case End():
        return end(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(First<T> value)? first,
    TResult? Function(Next<T> value)? next,
    TResult? Function(End<T> value)? end,
  }) {
    final _that = this;
    switch (_that) {
      case First() when first != null:
        return first(_that);
      case Next() when next != null:
        return next(_that);
      case End() when end != null:
        return end(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? first,
    TResult Function(T value)? next,
    TResult Function()? end,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case First() when first != null:
        return first();
      case Next() when next != null:
        return next(_that.value);
      case End() when end != null:
        return end();
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
  TResult when<TResult extends Object?>({
    required TResult Function() first,
    required TResult Function(T value) next,
    required TResult Function() end,
  }) {
    final _that = this;
    switch (_that) {
      case First():
        return first();
      case Next():
        return next(_that.value);
      case End():
        return end();
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? first,
    TResult? Function(T value)? next,
    TResult? Function()? end,
  }) {
    final _that = this;
    switch (_that) {
      case First() when first != null:
        return first();
      case Next() when next != null:
        return next(_that.value);
      case End() when end != null:
        return end();
      case _:
        return null;
    }
  }
}

/// @nodoc

class First<T> implements Cursor<T> {
  const First();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is First<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Cursor<$T>.first()';
  }
}

/// @nodoc

class Next<T> implements Cursor<T> {
  const Next(this.value);

  final T value;

  /// Create a copy of Cursor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NextCopyWith<T, Next<T>> get copyWith =>
      _$NextCopyWithImpl<T, Next<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Next<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'Cursor<$T>.next(value: $value)';
  }
}

/// @nodoc
abstract mixin class $NextCopyWith<T, $Res>
    implements $CursorCopyWith<T, $Res> {
  factory $NextCopyWith(Next<T> value, $Res Function(Next<T>) _then) =
      _$NextCopyWithImpl;
  @useResult
  $Res call({T value});
}

/// @nodoc
class _$NextCopyWithImpl<T, $Res> implements $NextCopyWith<T, $Res> {
  _$NextCopyWithImpl(this._self, this._then);

  final Next<T> _self;
  final $Res Function(Next<T>) _then;

  /// Create a copy of Cursor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
  }) {
    return _then(Next<T>(
      freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class End<T> implements Cursor<T> {
  const End();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is End<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Cursor<$T>.end()';
  }
}

// dart format on
