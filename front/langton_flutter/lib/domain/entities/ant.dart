import 'package:freezed_annotation/freezed_annotation.dart';

part 'ant.freezed.dart';

@freezed
abstract class Ant with _$Ant {
  const factory Ant({
    required AntOrientation orientation,
    required (int, int) position,
  }) = _Ant;
}

enum AntOrientation { north, east, south, west }
