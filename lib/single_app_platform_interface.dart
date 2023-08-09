import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'single_app_method_channel.dart';

abstract class SingleAppPlatform extends PlatformInterface {
  /// Constructs a SingleAppPlatform.
  SingleAppPlatform() : super(token: _token);

  static final Object _token = Object();

  static SingleAppPlatform _instance = MethodChannelSingleApp();

  /// The default instance of [SingleAppPlatform] to use.
  ///
  /// Defaults to [MethodChannelSingleApp].
  static SingleAppPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SingleAppPlatform] when
  /// they register themselves.
  static set instance(SingleAppPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
