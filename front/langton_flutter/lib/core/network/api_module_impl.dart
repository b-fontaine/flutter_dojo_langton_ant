import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'api_module.dart';
import 'rust_client.dart';

@prod
@Singleton(as: ApiModule)
class ApiModuleImpl implements ApiModule {
  late final RustClient _rustClient;

  ApiModuleImpl() {
    final dio = Dio();

    _rustClient = RustClient(dio, baseUrl: 'http://localhost:3000/api');
  }

  @override
  RustClient get rustClient => _rustClient;
}
