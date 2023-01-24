import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'smart_plugin_platform_interface.dart';

/// An implementation of [SmartPluginPlatform] that uses method channels.
class MethodChannelSmartPlugin extends SmartPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('smart_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getManufacturer() async {
    final manufacturer =
        await methodChannel.invokeMethod<String>('getManufacturer');
    return manufacturer;
  }

  @override
  Future<String?> getBoard() async {
    final board = await methodChannel.invokeMethod<String>('getBoard');
    return board;
  }

  @override
  Future<String?> getBrand() async {
    final brand = await methodChannel.invokeMethod<String>('getBrand');
    return brand;
  }

  @override
  Future<String?> getDevice() async {
    final device = await methodChannel.invokeMethod<String>('getDevice');
    return device;
  }

  @override
  Future<String?> getID() async {
    final id = await methodChannel.invokeMethod<String>('getID');
    return id;
  }

  @override
  Future<String?> getRadioVersion() async {
    final radioVersion =
        await methodChannel.invokeMethod<String>('getRadioVersion');
    return radioVersion;
  }

  @override
  Future<String?> getCurrentUTCTime() async {
    return await methodChannel.invokeMethod("getCurrentUTCTime");
  }
}
