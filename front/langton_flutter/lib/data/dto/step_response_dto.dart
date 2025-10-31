import 'package:freezed_annotation/freezed_annotation.dart';

import 'ant_dto.dart';
import 'cell_dto.dart';

part 'step_response_dto.freezed.dart';
part 'step_response_dto.g.dart';

@Freezed(fromJson: true, toJson: false)
abstract class StepResponseDto with _$StepResponseDto {
  const factory StepResponseDto({required AntDto ant, required CellDto cell}) =
      _StepResponseDto;

  factory StepResponseDto.fromJson(Map<String, dynamic> json) =>
      _$StepResponseDtoFromJson(json);
}
