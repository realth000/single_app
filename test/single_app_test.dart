import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:single_app/single_app.dart';
import 'package:single_app/src/single_app_method_channel.dart';
import 'package:single_app/src/single_app_platform_interface.dart';

class MockSingleAppPlatform
    with MockPlatformInterfaceMixin
    implements SingleAppPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final initialPlatform = SingleAppPlatform.instance;

  test('$MethodChannelSingleApp is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSingleApp>());
  });

  test('getPlatformVersion', () async {
    final singleAppPlugin = SingleApp();
    final fakePlatform = MockSingleAppPlatform();
    SingleAppPlatform.instance = fakePlatform;

    expect(await singleAppPlugin.getPlatformVersion(), '42');
  });
}
