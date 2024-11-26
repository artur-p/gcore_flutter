import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'gcore_flutter_platform_interface.dart';

/// An implementation of [GcoreFlutterPlatform] that uses method channels.
class MethodChannelGcoreFlutter extends GcoreFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('gcore_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
