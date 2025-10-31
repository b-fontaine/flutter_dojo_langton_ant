import 'package:dio/dio.dart';
import 'package:langton_ant/data/dto/step_request_dto.dart';
import 'package:langton_ant/data/dto/step_response_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'rust_client.g.dart';

@RestApi(baseUrl: 'http://localhost:3000/api')
abstract class RustClient {
  factory RustClient(Dio dio, {String? baseUrl}) = _RustClient;

  @POST('/step')
  Future<StepResponseDto> step(@Body() StepRequestDto request);
}
