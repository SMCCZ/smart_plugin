import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'smart_plugin_method_channel.dart';

abstract class SmartPluginPlatform extends PlatformInterface {
  /// Constructs a SmartPluginPlatform.
  SmartPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static SmartPluginPlatform _instance = MethodChannelSmartPlugin();

  /// The default instance of [SmartPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelSmartPlugin].
  static SmartPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SmartPluginPlatform] when
  /// they register themselves.
  static set instance(SmartPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
