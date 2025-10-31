// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'step_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StepRequestDto {

 String get orientation; PositionDto get position;@JsonKey(name: 'cell_color') String get cellColor;
/// Create a copy of StepRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StepRequestDtoCopyWith<StepRequestDto> get copyWith => _$StepRequestDtoCopyWithImpl<StepRequestDto>(this as StepRequestDto, _$identity);

  /// Serializes this StepRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StepRequestDto&&(identical(other.orientation, orientation) || other.orientation == orientation)&&(identical(other.position, position) || other.position == position)&&(identical(other.cellColor, cellColor) || other.cellColor == cellColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orientation,position,cellColor);

@override
String toString() {
  return 'StepRequestDto(orientation: $orientation, position: $position, cellColor: $cellColor)';
}


}

/// @nodoc
abstract mixin class $StepRequestDtoCopyWith<$Res>  {
  factory $StepRequestDtoCopyWith(StepRequestDto value, $Res Function(StepRequestDto) _then) = _$StepRequestDtoCopyWithImpl;
@useResult
$Res call({
 String orientation, PositionDto position,@JsonKey(name: 'cell_color') String cellColor
});


$PositionDtoCopyWith<$Res> get position;

}
/// @nodoc
class _$StepRequestDtoCopyWithImpl<$Res>
    implements $StepRequestDtoCopyWith<$Res> {
  _$StepRequestDtoCopyWithImpl(this._self, this._then);

  final StepRequestDto _self;
  final $Res Function(StepRequestDto) _then;

/// Create a copy of StepRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orientation = null,Object? position = null,Object? cellColor = null,}) {
  return _then(_self.copyWith(
orientation: null == orientation ? _self.orientation : orientation // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as PositionDto,cellColor: null == cellColor ? _self.cellColor : cellColor // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of StepRequestDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PositionDtoCopyWith<$Res> get position {
  
  return $PositionDtoCopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}


/// Adds pattern-matching-related methods to [StepRequestDto].
extension StepRequestDtoPatterns on StepRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StepRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StepRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StepRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _StepRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StepRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _StepRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orientation,  PositionDto position, @JsonKey(name: 'cell_color')  String cellColor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StepRequestDto() when $default != null:
return $default(_that.orientation,_that.position,_that.cellColor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orientation,  PositionDto position, @JsonKey(name: 'cell_color')  String cellColor)  $default,) {final _that = this;
switch (_that) {
case _StepRequestDto():
return $default(_that.orientation,_that.position,_that.cellColor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orientation,  PositionDto position, @JsonKey(name: 'cell_color')  String cellColor)?  $default,) {final _that = this;
switch (_that) {
case _StepRequestDto() when $default != null:
return $default(_that.orientation,_that.position,_that.cellColor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createFactory: false)

class _StepRequestDto implements StepRequestDto {
  const _StepRequestDto({required this.orientation, required this.position, @JsonKey(name: 'cell_color') required this.cellColor});
  

@override final  String orientation;
@override final  PositionDto position;
@override@JsonKey(name: 'cell_color') final  String cellColor;

/// Create a copy of StepRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StepRequestDtoCopyWith<_StepRequestDto> get copyWith => __$StepRequestDtoCopyWithImpl<_StepRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StepRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StepRequestDto&&(identical(other.orientation, orientation) || other.orientation == orientation)&&(identical(other.position, position) || other.position == position)&&(identical(other.cellColor, cellColor) || other.cellColor == cellColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orientation,position,cellColor);

@override
String toString() {
  return 'StepRequestDto(orientation: $orientation, position: $position, cellColor: $cellColor)';
}


}

/// @nodoc
abstract mixin class _$StepRequestDtoCopyWith<$Res> implements $StepRequestDtoCopyWith<$Res> {
  factory _$StepRequestDtoCopyWith(_StepRequestDto value, $Res Function(_StepRequestDto) _then) = __$StepRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String orientation, PositionDto position,@JsonKey(name: 'cell_color') String cellColor
});


@override $PositionDtoCopyWith<$Res> get position;

}
/// @nodoc
class __$StepRequestDtoCopyWithImpl<$Res>
    implements _$StepRequestDtoCopyWith<$Res> {
  __$StepRequestDtoCopyWithImpl(this._self, this._then);

  final _StepRequestDto _self;
  final $Res Function(_StepRequestDto) _then;

/// Create a copy of StepRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orientation = null,Object? position = null,Object? cellColor = null,}) {
  return _then(_StepRequestDto(
orientation: null == orientation ? _self.orientation : orientation // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as PositionDto,cellColor: null == cellColor ? _self.cellColor : cellColor // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of StepRequestDto
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
