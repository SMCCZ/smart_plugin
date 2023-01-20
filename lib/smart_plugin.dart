
import 'smart_plugin_platform_interface.dart';

class SmartPlugin {
  Future<String?> getPlatformVersion() {
    return SmartPluginPlatform.instance.getPlatformVersion();
  }
}
