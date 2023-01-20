import 'package:flutter_test/flutter_test.dart';
import 'package:smart_plugin/smart_plugin.dart';
import 'package:smart_plugin/smart_plugin_platform_interface.dart';
import 'package:smart_plugin/smart_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSmartPluginPlatform
    with MockPlatformInterfaceMixin
    implements SmartPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SmartPluginPlatform initialPlatform = SmartPluginPlatform.instance;

  test('$MethodChannelSmartPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSmartPlugin>());
  });

  test('getPlatformVersion', () async {
    SmartPlugin smartPlugin = SmartPlugin();
    MockSmartPluginPlatform fakePlatform = MockSmartPluginPlatform();
    SmartPluginPlatform.instance = fakePlatform;

    expect(await smartPlugin.getPlatformVersion(), '42');
  });
}
