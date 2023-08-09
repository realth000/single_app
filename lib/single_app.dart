
import 'single_app_platform_interface.dart';

class SingleApp {
  Future<String?> getPlatformVersion() {
    return SingleAppPlatform.instance.getPlatformVersion();
  }
}
