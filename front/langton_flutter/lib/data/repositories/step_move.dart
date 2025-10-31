import 'package:injectable/injectable.dart' show injectable;
import 'package:langton_ant/core/network/api_module.dart';

import '../dto/step_request_dto.dart';
import '../dto/step_response_dto.dart';

@injectable
class StepMoveRepository {
  final ApiModule _apiModule;
  StepMoveRepository(this._apiModule);

  Future<StepResponseDto> call(StepRequestDto request) async {
    return _apiModule.rustClient.step(request);
  }
}
