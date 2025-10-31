// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Ant {

 AntOrientation get orientation; (int, int) get position;
/// Create a copy of Ant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AntCopyWith<Ant> get copyWith => _$AntCopyWithImpl<Ant>(this as Ant, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ant&&(identical(other.orientation, orientation) || other.orientation == orientation)&&(identical(other.position, position) || other.position == position));
}


@override
int get hashCode => Object.hash(runtimeType,orientation,position);

@override
String toString() {
  return 'Ant(orientation: $orientation, position: $position)';
}


}

/// @nodoc
abstract mixin class $AntCopyWith<$Res>  {
  factory $AntCopyWith(Ant value, $Res Function(Ant) _then) = _$AntCopyWithImpl;
@useResult
$Res call({
 AntOrientation orientation, (int, int) position
});




}
/// @nodoc
class _$AntCopyWithImpl<$Res>
    implements $AntCopyWith<$Res> {
  _$AntCopyWithImpl(this._self, this._then);

  final Ant _self;
  final $Res Function(Ant) _then;

/// Create a copy of Ant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orientation = null,Object? position = null,}) {
  return _then(_self.copyWith(
orientation: null == orientation ? _self.orientation : orientation // ignore: cast_nullable_to_non_nullable
as AntOrientation,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as (int, int),
  ));
}

}


/// Adds pattern-matching-related methods to [Ant].
extension AntPatterns on Ant {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Ant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ant() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Ant value)  $default,){
final _that = this;
switch (_that) {
case _Ant():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Ant value)?  $default,){
final _that = this;
switch (_that) {
case _Ant() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AntOrientation orientation,  (int, int) position)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ant() when $default != null:
return $default(_that.orientation,_that.position);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AntOrientation orientation,  (int, int) position)  $default,) {final _that = this;
switch (_that) {
case _Ant():
return $default(_that.orientation,_that.position);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AntOrientation orientation,  (int, int) position)?  $default,) {final _that = this;
switch (_that) {
case _Ant() when $default != null:
return $default(_that.orientation,_that.position);case _:
  return null;

}
}

}

/// @nodoc


class _Ant implements Ant {
  const _Ant({required this.orientation, required this.position});
  

@override final  AntOrientation orientation;
@override final  (int, int) position;

/// Create a copy of Ant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AntCopyWith<_Ant> get copyWith => __$AntCopyWithImpl<_Ant>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ant&&(identical(other.orientation, orientation) || other.orientation == orientation)&&(identical(other.position, position) || other.position == position));
}


@override
int get hashCode => Object.hash(runtimeType,orientation,position);

@override
String toString() {
  return 'Ant(orientation: $orientation, position: $position)';
}


}

/// @nodoc
abstract mixin class _$AntCopyWith<$Res> implements $AntCopyWith<$Res> {
  factory _$AntCopyWith(_Ant value, $Res Function(_Ant) _then) = __$AntCopyWithImpl;
@override @useResult
$Res call({
 AntOrientation orientation, (int, int) position
});




}
/// @nodoc
class __$AntCopyWithImpl<$Res>
    implements _$AntCopyWith<$Res> {
  __$AntCopyWithImpl(this._self, this._then);

  final _Ant _self;
  final $Res Function(_Ant) _then;

/// Create a copy of Ant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orientation = null,Object? position = null,}) {
  return _then(_Ant(
orientation: null == orientation ? _self.orientation : orientation // ignore: cast_nullable_to_non_nullable
as AntOrientation,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as (int, int),
  ));
}


}

// dart format on
