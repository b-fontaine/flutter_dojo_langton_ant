// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'step_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StepResponseDto {

 AntDto get ant; CellDto get cell;
/// Create a copy of StepResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StepResponseDtoCopyWith<StepResponseDto> get copyWith => _$StepResponseDtoCopyWithImpl<StepResponseDto>(this as StepResponseDto, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StepResponseDto&&(identical(other.ant, ant) || other.ant == ant)&&(identical(other.cell, cell) || other.cell == cell));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ant,cell);

@override
String toString() {
  return 'StepResponseDto(ant: $ant, cell: $cell)';
}


}

/// @nodoc
abstract mixin class $StepResponseDtoCopyWith<$Res>  {
  factory $StepResponseDtoCopyWith(StepResponseDto value, $Res Function(StepResponseDto) _then) = _$StepResponseDtoCopyWithImpl;
@useResult
$Res call({
 AntDto ant, CellDto cell
});


$AntDtoCopyWith<$Res> get ant;$CellDtoCopyWith<$Res> get cell;

}
/// @nodoc
class _$StepResponseDtoCopyWithImpl<$Res>
    implements $StepResponseDtoCopyWith<$Res> {
  _$StepResponseDtoCopyWithImpl(this._self, this._then);

  final StepResponseDto _self;
  final $Res Function(StepResponseDto) _then;

/// Create a copy of StepResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ant = null,Object? cell = null,}) {
  return _then(_self.copyWith(
ant: null == ant ? _self.ant : ant // ignore: cast_nullable_to_non_nullable
as AntDto,cell: null == cell ? _self.cell : cell // ignore: cast_nullable_to_non_nullable
as CellDto,
  ));
}
/// Create a copy of StepResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AntDtoCopyWith<$Res> get ant {
  
  return $AntDtoCopyWith<$Res>(_self.ant, (value) {
    return _then(_self.copyWith(ant: value));
  });
}/// Create a copy of StepResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CellDtoCopyWith<$Res> get cell {
  
  return $CellDtoCopyWith<$Res>(_self.cell, (value) {
    return _then(_self.copyWith(cell: value));
  });
}
}


/// Adds pattern-matching-related methods to [StepResponseDto].
extension StepResponseDtoPatterns on StepResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StepResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StepResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StepResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _StepResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StepResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _StepResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AntDto ant,  CellDto cell)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StepResponseDto() when $default != null:
return $default(_that.ant,_that.cell);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AntDto ant,  CellDto cell)  $default,) {final _that = this;
switch (_that) {
case _StepResponseDto():
return $default(_that.ant,_that.cell);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AntDto ant,  CellDto cell)?  $default,) {final _that = this;
switch (_that) {
case _StepResponseDto() when $default != null:
return $default(_that.ant,_that.cell);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _StepResponseDto implements StepResponseDto {
  const _StepResponseDto({required this.ant, required this.cell});
  factory _StepResponseDto.fromJson(Map<String, dynamic> json) => _$StepResponseDtoFromJson(json);

@override final  AntDto ant;
@override final  CellDto cell;

/// Create a copy of StepResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StepResponseDtoCopyWith<_StepResponseDto> get copyWith => __$StepResponseDtoCopyWithImpl<_StepResponseDto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StepResponseDto&&(identical(other.ant, ant) || other.ant == ant)&&(identical(other.cell, cell) || other.cell == cell));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ant,cell);

@override
String toString() {
  return 'StepResponseDto(ant: $ant, cell: $cell)';
}


}

/// @nodoc
abstract mixin class _$StepResponseDtoCopyWith<$Res> implements $StepResponseDtoCopyWith<$Res> {
  factory _$StepResponseDtoCopyWith(_StepResponseDto value, $Res Function(_StepResponseDto) _then) = __$StepResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 AntDto ant, CellDto cell
});


@override $AntDtoCopyWith<$Res> get ant;@override $CellDtoCopyWith<$Res> get cell;

}
/// @nodoc
class __$StepResponseDtoCopyWithImpl<$Res>
    implements _$StepResponseDtoCopyWith<$Res> {
  __$StepResponseDtoCopyWithImpl(this._self, this._then);

  final _StepResponseDto _self;
  final $Res Function(_StepResponseDto) _then;

/// Create a copy of StepResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ant = null,Object? cell = null,}) {
  return _then(_StepResponseDto(
ant: null == ant ? _self.ant : ant // ignore: cast_nullable_to_non_nullable
as AntDto,cell: null == cell ? _self.cell : cell // ignore: cast_nullable_to_non_nullable
as CellDto,
  ));
}

/// Create a copy of StepResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AntDtoCopyWith<$Res> get ant {
  
  return $AntDtoCopyWith<$Res>(_self.ant, (value) {
    return _then(_self.copyWith(ant: value));
  });
}/// Create a copy of StepResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CellDtoCopyWith<$Res> get cell {
  
  return $CellDtoCopyWith<$Res>(_self.cell, (value) {
    return _then(_self.copyWith(cell: value));
  });
}
}

// dart format on
