// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Grid {

 List<GridRow> get rows;
/// Create a copy of Grid
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GridCopyWith<Grid> get copyWith => _$GridCopyWithImpl<Grid>(this as Grid, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Grid&&const DeepCollectionEquality().equals(other.rows, rows));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(rows));

@override
String toString() {
  return 'Grid(rows: $rows)';
}


}

/// @nodoc
abstract mixin class $GridCopyWith<$Res>  {
  factory $GridCopyWith(Grid value, $Res Function(Grid) _then) = _$GridCopyWithImpl;
@useResult
$Res call({
 List<GridRow> rows
});




}
/// @nodoc
class _$GridCopyWithImpl<$Res>
    implements $GridCopyWith<$Res> {
  _$GridCopyWithImpl(this._self, this._then);

  final Grid _self;
  final $Res Function(Grid) _then;

/// Create a copy of Grid
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rows = null,}) {
  return _then(_self.copyWith(
rows: null == rows ? _self.rows : rows // ignore: cast_nullable_to_non_nullable
as List<GridRow>,
  ));
}

}


/// Adds pattern-matching-related methods to [Grid].
extension GridPatterns on Grid {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Grid value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Grid() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Grid value)  $default,){
final _that = this;
switch (_that) {
case _Grid():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Grid value)?  $default,){
final _that = this;
switch (_that) {
case _Grid() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<GridRow> rows)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Grid() when $default != null:
return $default(_that.rows);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<GridRow> rows)  $default,) {final _that = this;
switch (_that) {
case _Grid():
return $default(_that.rows);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<GridRow> rows)?  $default,) {final _that = this;
switch (_that) {
case _Grid() when $default != null:
return $default(_that.rows);case _:
  return null;

}
}

}

/// @nodoc


class _Grid implements Grid {
  const _Grid({required final  List<GridRow> rows}): _rows = rows;
  

 final  List<GridRow> _rows;
@override List<GridRow> get rows {
  if (_rows is EqualUnmodifiableListView) return _rows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rows);
}


/// Create a copy of Grid
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GridCopyWith<_Grid> get copyWith => __$GridCopyWithImpl<_Grid>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Grid&&const DeepCollectionEquality().equals(other._rows, _rows));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_rows));

@override
String toString() {
  return 'Grid(rows: $rows)';
}


}

/// @nodoc
abstract mixin class _$GridCopyWith<$Res> implements $GridCopyWith<$Res> {
  factory _$GridCopyWith(_Grid value, $Res Function(_Grid) _then) = __$GridCopyWithImpl;
@override @useResult
$Res call({
 List<GridRow> rows
});




}
/// @nodoc
class __$GridCopyWithImpl<$Res>
    implements _$GridCopyWith<$Res> {
  __$GridCopyWithImpl(this._self, this._then);

  final _Grid _self;
  final $Res Function(_Grid) _then;

/// Create a copy of Grid
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rows = null,}) {
  return _then(_Grid(
rows: null == rows ? _self._rows : rows // ignore: cast_nullable_to_non_nullable
as List<GridRow>,
  ));
}


}

/// @nodoc
mixin _$GridRow {

 List<GridCell> get cells;
/// Create a copy of GridRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GridRowCopyWith<GridRow> get copyWith => _$GridRowCopyWithImpl<GridRow>(this as GridRow, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GridRow&&const DeepCollectionEquality().equals(other.cells, cells));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(cells));

@override
String toString() {
  return 'GridRow(cells: $cells)';
}


}

/// @nodoc
abstract mixin class $GridRowCopyWith<$Res>  {
  factory $GridRowCopyWith(GridRow value, $Res Function(GridRow) _then) = _$GridRowCopyWithImpl;
@useResult
$Res call({
 List<GridCell> cells
});




}
/// @nodoc
class _$GridRowCopyWithImpl<$Res>
    implements $GridRowCopyWith<$Res> {
  _$GridRowCopyWithImpl(this._self, this._then);

  final GridRow _self;
  final $Res Function(GridRow) _then;

/// Create a copy of GridRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cells = null,}) {
  return _then(_self.copyWith(
cells: null == cells ? _self.cells : cells // ignore: cast_nullable_to_non_nullable
as List<GridCell>,
  ));
}

}


/// Adds pattern-matching-related methods to [GridRow].
extension GridRowPatterns on GridRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GridRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GridRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GridRow value)  $default,){
final _that = this;
switch (_that) {
case _GridRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GridRow value)?  $default,){
final _that = this;
switch (_that) {
case _GridRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<GridCell> cells)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GridRow() when $default != null:
return $default(_that.cells);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<GridCell> cells)  $default,) {final _that = this;
switch (_that) {
case _GridRow():
return $default(_that.cells);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<GridCell> cells)?  $default,) {final _that = this;
switch (_that) {
case _GridRow() when $default != null:
return $default(_that.cells);case _:
  return null;

}
}

}

/// @nodoc


class _GridRow implements GridRow {
  const _GridRow({required final  List<GridCell> cells}): _cells = cells;
  

 final  List<GridCell> _cells;
@override List<GridCell> get cells {
  if (_cells is EqualUnmodifiableListView) return _cells;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cells);
}


/// Create a copy of GridRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GridRowCopyWith<_GridRow> get copyWith => __$GridRowCopyWithImpl<_GridRow>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GridRow&&const DeepCollectionEquality().equals(other._cells, _cells));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cells));

@override
String toString() {
  return 'GridRow(cells: $cells)';
}


}

/// @nodoc
abstract mixin class _$GridRowCopyWith<$Res> implements $GridRowCopyWith<$Res> {
  factory _$GridRowCopyWith(_GridRow value, $Res Function(_GridRow) _then) = __$GridRowCopyWithImpl;
@override @useResult
$Res call({
 List<GridCell> cells
});




}
/// @nodoc
class __$GridRowCopyWithImpl<$Res>
    implements _$GridRowCopyWith<$Res> {
  __$GridRowCopyWithImpl(this._self, this._then);

  final _GridRow _self;
  final $Res Function(_GridRow) _then;

/// Create a copy of GridRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cells = null,}) {
  return _then(_GridRow(
cells: null == cells ? _self._cells : cells // ignore: cast_nullable_to_non_nullable
as List<GridCell>,
  ));
}


}

/// @nodoc
mixin _$GridCell {

 GridCellColor get color;
/// Create a copy of GridCell
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GridCellCopyWith<GridCell> get copyWith => _$GridCellCopyWithImpl<GridCell>(this as GridCell, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GridCell&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,color);

@override
String toString() {
  return 'GridCell(color: $color)';
}


}

/// @nodoc
abstract mixin class $GridCellCopyWith<$Res>  {
  factory $GridCellCopyWith(GridCell value, $Res Function(GridCell) _then) = _$GridCellCopyWithImpl;
@useResult
$Res call({
 GridCellColor color
});




}
/// @nodoc
class _$GridCellCopyWithImpl<$Res>
    implements $GridCellCopyWith<$Res> {
  _$GridCellCopyWithImpl(this._self, this._then);

  final GridCell _self;
  final $Res Function(GridCell) _then;

/// Create a copy of GridCell
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? color = null,}) {
  return _then(_self.copyWith(
color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as GridCellColor,
  ));
}

}


/// Adds pattern-matching-related methods to [GridCell].
extension GridCellPatterns on GridCell {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GridCell value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GridCell() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GridCell value)  $default,){
final _that = this;
switch (_that) {
case _GridCell():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GridCell value)?  $default,){
final _that = this;
switch (_that) {
case _GridCell() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GridCellColor color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GridCell() when $default != null:
return $default(_that.color);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GridCellColor color)  $default,) {final _that = this;
switch (_that) {
case _GridCell():
return $default(_that.color);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GridCellColor color)?  $default,) {final _that = this;
switch (_that) {
case _GridCell() when $default != null:
return $default(_that.color);case _:
  return null;

}
}

}

/// @nodoc


class _GridCell implements GridCell {
  const _GridCell({required this.color});
  

@override final  GridCellColor color;

/// Create a copy of GridCell
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GridCellCopyWith<_GridCell> get copyWith => __$GridCellCopyWithImpl<_GridCell>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GridCell&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,color);

@override
String toString() {
  return 'GridCell(color: $color)';
}


}

/// @nodoc
abstract mixin class _$GridCellCopyWith<$Res> implements $GridCellCopyWith<$Res> {
  factory _$GridCellCopyWith(_GridCell value, $Res Function(_GridCell) _then) = __$GridCellCopyWithImpl;
@override @useResult
$Res call({
 GridCellColor color
});




}
/// @nodoc
class __$GridCellCopyWithImpl<$Res>
    implements _$GridCellCopyWith<$Res> {
  __$GridCellCopyWithImpl(this._self, this._then);

  final _GridCell _self;
  final $Res Function(_GridCell) _then;

/// Create a copy of GridCell
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? color = null,}) {
  return _then(_GridCell(
color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as GridCellColor,
  ));
}


}

// dart format on
