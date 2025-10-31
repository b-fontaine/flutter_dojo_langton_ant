import 'package:dio/dio.dart';
import 'package:dio_mocked_responses/dio_mocked_responses.dart'
    show MockInterceptor;
import 'package:injectable/injectable.dart' show Singleton, test;

import 'api_module.dart';
import 'rust_client.dart';

@test
@Singleton(as: ApiModule)
class ApiModuleStub implements ApiModule {
  late final RustClient _rustClient;

  ApiModuleStub() {
    final dio = Dio()
      ..interceptors.add(MockInterceptor(basePath: 'mocks/rust'));

    _rustClient = RustClient(dio, baseUrl: '');
  }

  @override
  RustClient get rustClient => _rustClient;
}
