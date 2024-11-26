import 'package:flutter_test/flutter_test.dart';
import 'package:gcore_flutter/gcore_flutter.dart';
import 'package:gcore_flutter/gcore_flutter_platform_interface.dart';
import 'package:gcore_flutter/gcore_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockGcoreFlutterPlatform
    with MockPlatformInterfaceMixin
    implements GcoreFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final GcoreFlutterPlatform initialPlatform = GcoreFlutterPlatform.instance;

  test('$MethodChannelGcoreFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelGcoreFlutter>());
  });

  test('getPlatformVersion', () async {
    GcoreFlutter gcoreFlutterPlugin = GcoreFlutter();
    MockGcoreFlutterPlatform fakePlatform = MockGcoreFlutterPlatform();
    GcoreFlutterPlatform.instance = fakePlatform;

    expect(await gcoreFlutterPlugin.getPlatformVersion(), '42');
  });
}
