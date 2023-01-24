import 'smart_plugin_platform_interface.dart';

class SmartPlugin {
  Future<String?> getPlatformVersion() {
    return SmartPluginPlatform.instance.getPlatformVersion();
  }

  Future<String?> getManufacturer() {
    return SmartPluginPlatform.instance.getManufacturer();
  }

  Future<String?> getBoard() {
    return SmartPluginPlatform.instance.getBoard();
  }

  Future<String?> getRadioVersion() {
    return SmartPluginPlatform.instance.getRadioVersion();
  }

  Future<String?> getBrand() {
    return SmartPluginPlatform.instance.getBrand();
  }

  Future<String?> getDevice() {
    return SmartPluginPlatform.instance.getDevice();
  }

  Future<String?> getID() {
    return SmartPluginPlatform.instance.getID();
  }

  Future<String?> getCurrentUTCTime() {
    return SmartPluginPlatform.instance.getCurrentUTCTime();
  }
}
