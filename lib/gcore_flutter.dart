
import 'gcore_flutter_platform_interface.dart';

class GcoreFlutter {
  Future<String?> getPlatformVersion() {
    return GcoreFlutterPlatform.instance.getPlatformVersion();
  }
}
