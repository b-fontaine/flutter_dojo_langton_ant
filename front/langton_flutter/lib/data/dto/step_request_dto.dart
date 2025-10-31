import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:langton_ant/data/dto/position_dto.dart';

part 'step_request_dto.freezed.dart';
part 'step_request_dto.g.dart';

@Freezed(fromJson: false, toJson: true)
abstract class StepRequestDto with _$StepRequestDto {
  const factory StepRequestDto({
    required String orientation,
    required PositionDto position,
    @JsonKey(name: 'cell_color') required String cellColor,
  }) = _StepRequestDto;
}
