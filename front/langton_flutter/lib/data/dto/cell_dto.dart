import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:langton_ant/data/dto/position_dto.dart';

part 'cell_dto.freezed.dart';
part 'cell_dto.g.dart';

@Freezed(fromJson: true, toJson: false)
abstract class CellDto with _$CellDto {
  const factory CellDto({
    required String color,
    required PositionDto position,
  }) = _CellDto;

  factory CellDto.fromJson(Map<String, dynamic> json) =>
      _$CellDtoFromJson(json);
}
