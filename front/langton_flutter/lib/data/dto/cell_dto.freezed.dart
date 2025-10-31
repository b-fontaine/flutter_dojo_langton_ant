// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cell_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CellDto {

 String get color; PositionDto get position;
/// Create a copy of CellDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CellDtoCopyWith<CellDto> get copyWith => _$CellDtoCopyWithImpl<CellDto>(this as CellDto, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CellDto&&(identical(other.color, color) || other.color == color)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,color,position);

@override
String toString() {
  return 'CellDto(color: $color, position: $position)';
}


}

/// @nodoc
abstract mixin class $CellDtoCopyWith<$Res>  {
  factory $CellDtoCopyWith(CellDto value, $Res Function(CellDto) _then) = _$CellDtoCopyWithImpl;
@useResult
$Res call({
 String color, PositionDto position
});


$PositionDtoCopyWith<$Res> get position;

}
/// @nodoc
class _$CellDtoCopyWithImpl<$Res>
    implements $CellDtoCopyWith<$Res> {
  _$CellDtoCopyWithImpl(this._self, this._then);

  final CellDto _self;
  final $Res Function(CellDto) _then;

/// Create a copy of CellDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? color = null,Object? position = null,}) {
  return _then(_self.copyWith(
color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as PositionDto,
  ));
}
/// Create a copy of CellDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PositionDtoCopyWith<$Res> get position {
  
  return $PositionDtoCopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}


/// Adds pattern-matching-related methods to [CellDto].
extension CellDtoPatterns on CellDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CellDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CellDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CellDto value)  $default,){
final _that = this;
switch (_that) {
case _CellDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CellDto value)?  $default,){
final _that = this;
switch (_that) {
case _CellDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String color,  PositionDto position)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CellDto() when $default != null:
return $default(_that.color,_that.position);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String color,  PositionDto position)  $default,) {final _that = this;
switch (_that) {
case _CellDto():
return $default(_that.color,_that.position);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String color,  PositionDto position)?  $default,) {final _that = this;
switch (_that) {
case _CellDto() when $default != null:
return $default(_that.color,_that.position);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _CellDto implements CellDto {
  const _CellDto({required this.color, required this.position});
  factory _CellDto.fromJson(Map<String, dynamic> json) => _$CellDtoFromJson(json);

@override final  String color;
@override final  PositionDto position;

/// Create a copy of CellDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CellDtoCopyWith<_CellDto> get copyWith => __$CellDtoCopyWithImpl<_CellDto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CellDto&&(identical(other.color, color) || other.color == color)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,color,position);

@override
String toString() {
  return 'CellDto(color: $color, position: $position)';
}


}

/// @nodoc
abstract mixin class _$CellDtoCopyWith<$Res> implements $CellDtoCopyWith<$Res> {
  factory _$CellDtoCopyWith(_CellDto value, $Res Function(_CellDto) _then) = __$CellDtoCopyWithImpl;
@override @useResult
$Res call({
 String color, PositionDto position
});


@override $PositionDtoCopyWith<$Res> get position;

}
/// @nodoc
class __$CellDtoCopyWithImpl<$Res>
    implements _$CellDtoCopyWith<$Res> {
  __$CellDtoCopyWithImpl(this._self, this._then);

  final _CellDto _self;
  final $Res Function(_CellDto) _then;

/// Create a copy of CellDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? color = null,Object? position = null,}) {
  return _then(_CellDto(
color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as PositionDto,
  ));
}

/// Create a copy of CellDto
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
