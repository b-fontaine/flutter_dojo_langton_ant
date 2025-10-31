import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_dto.freezed.dart';
part 'position_dto.g.dart';

@Freezed(fromJson: true, toJson: true)
abstract class PositionDto with _$PositionDto {
  const factory PositionDto({required int x, required int y}) = _PositionDto;

  factory PositionDto.fromJson(Map<String, dynamic> json) =>
      _$PositionDtoFromJson(json);
}
