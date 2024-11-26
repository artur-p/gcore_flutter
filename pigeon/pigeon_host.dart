import 'package:pigeon/pigeon.dart';

@HostApi()
abstract class GCoreHost {
  String getPlatformVersion();
}
