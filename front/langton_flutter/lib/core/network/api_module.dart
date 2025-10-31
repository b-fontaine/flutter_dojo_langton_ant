import 'package:langton_ant/core/network/rust_client.dart' show RustClient;

abstract interface class ApiModule {
  RustClient get rustClient;
}
