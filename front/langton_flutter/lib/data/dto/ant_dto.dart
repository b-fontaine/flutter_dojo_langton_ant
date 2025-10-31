import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:langton_ant/data/dto/position_dto.dart';

part 'ant_dto.freezed.dart';
part 'ant_dto.g.dart';

@Freezed(fromJson: true, toJson: false)
abstract class AntDto with _$AntDto {
  const factory AntDto({
    required String orientation,
    required PositionDto position,
  }) = _AntDto;
  factory AntDto.fromJson(Map<String, dynamic> json) => _$AntDtoFromJson(json);
}
