import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'gcore_flutter_method_channel.dart';

abstract class GcoreFlutterPlatform extends PlatformInterface {
  /// Constructs a GcoreFlutterPlatform.
  GcoreFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static GcoreFlutterPlatform _instance = MethodChannelGcoreFlutter();

  /// The default instance of [GcoreFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelGcoreFlutter].
  static GcoreFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [GcoreFlutterPlatform] when
  /// they register themselves.
  static set instance(GcoreFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
