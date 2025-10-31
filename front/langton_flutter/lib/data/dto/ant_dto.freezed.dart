// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ant_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AntDto {

 String get orientation; PositionDto get position;
/// Create a copy of AntDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AntDtoCopyWith<AntDto> get copyWith => _$AntDtoCopyWithImpl<AntDto>(this as AntDto, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AntDto&&(identical(other.orientation, orientation) || other.orientation == orientation)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orientation,position);

@override
String toString() {
  return 'AntDto(orientation: $orientation, position: $position)';
}


}

/// @nodoc
abstract mixin class $AntDtoCopyWith<$Res>  {
  factory $AntDtoCopyWith(AntDto value, $Res Function(AntDto) _then) = _$AntDtoCopyWithImpl;
@useResult
$Res call({
 String orientation, PositionDto position
});


$PositionDtoCopyWith<$Res> get position;

}
/// @nodoc
class _$AntDtoCopyWithImpl<$Res>
    implements $AntDtoCopyWith<$Res> {
  _$AntDtoCopyWithImpl(this._self, this._then);

  final AntDto _self;
  final $Res Function(AntDto) _then;

/// Create a copy of AntDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orientation = null,Object? position = null,}) {
  return _then(_self.copyWith(
orientation: null == orientation ? _self.orientation : orientation // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as PositionDto,
  ));
}
/// Create a copy of AntDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PositionDtoCopyWith<$Res> get position {
  
  return $PositionDtoCopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}


/// Adds pattern-matching-related methods to [AntDto].
extension AntDtoPatterns on AntDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AntDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AntDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AntDto value)  $default,){
final _that = this;
switch (_that) {
case _AntDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AntDto value)?  $default,){
final _that = this;
switch (_that) {
case _AntDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orientation,  PositionDto position)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AntDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orientation,  PositionDto position)  $default,) {final _that = this;
switch (_that) {
case _AntDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orientation,  PositionDto position)?  $default,) {final _that = this;
switch (_that) {
case _AntDto() when $default != null:
return $default(_that.orientation,_that.position);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _AntDto implements AntDto {
  const _AntDto({required this.orientation, required this.position});
  factory _AntDto.fromJson(Map<String, dynamic> json) => _$AntDtoFromJson(json);

@override final  String orientation;
@override final  PositionDto position;

/// Create a copy of AntDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AntDtoCopyWith<_AntDto> get copyWith => __$AntDtoCopyWithImpl<_AntDto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AntDto&&(identical(other.orientation, orientation) || other.orientation == orientation)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orientation,position);

@override
String toString() {
  return 'AntDto(orientation: $orientation, position: $position)';
}


}

/// @nodoc
abstract mixin class _$AntDtoCopyWith<$Res> implements $AntDtoCopyWith<$Res> {
  factory _$AntDtoCopyWith(_AntDto value, $Res Function(_AntDto) _then) = __$AntDtoCopyWithImpl;
@override @useResult
$Res call({
 String orientation, PositionDto position
});


@override $PositionDtoCopyWith<$Res> get position;

}
/// @nodoc
class __$AntDtoCopyWithImpl<$Res>
    implements _$AntDtoCopyWith<$Res> {
  __$AntDtoCopyWithImpl(this._self, this._then);

  final _AntDto _self;
  final $Res Function(_AntDto) _then;

/// Create a copy of AntDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orientation = null,Object? position = null,}) {
  return _then(_AntDto(
orientation: null == orientation ? _self.orientation : orientation // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as PositionDto,
  ));
}

/// Create a copy of AntDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PositionDtoCopyWith<$Res> get position {
  
  return $PositionDtoCopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}

// dart format on
