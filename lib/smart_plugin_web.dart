// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'smart_plugin_platform_interface.dart';

/// A web implementation of the SmartPluginPlatform of the SmartPlugin plugin.
class SmartPluginWeb extends SmartPluginPlatform {
  /// Constructs a SmartPluginWeb
  SmartPluginWeb();

  static void registerWith(Registrar registrar) {
    SmartPluginPlatform.instance = SmartPluginWeb();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    final version = html.window.navigator.userAgent;
    return version;
  }
  
  @override
  Future<String?> getManufacturer() {
    // TODO: implement getManufacturer
    throw UnimplementedError();
  }
  
  @override
  Future<String?> getBoard() {
    // TODO: implement getBoard
    throw UnimplementedError();
  }
  
  @override
  Future<String?> getBrand() {
    // TODO: implement getBrand
    throw UnimplementedError();
  }
  
  @override
  Future<String?> getDevice() {
    // TODO: implement getDevice
    throw UnimplementedError();
  }
  
  @override
  Future<String?> getID() {
    // TODO: implement getID
    throw UnimplementedError();
  }
  
  @override
  Future<String?> getRadioVersion() {
    // TODO: implement getRadioVersion
    throw UnimplementedError();
  }
  
  @override
  Future<int?> wakeUpAlarmsCount() {
    // TODO: implement wakeUpAlarmsCount
    throw UnimplementedError();
  }
}
