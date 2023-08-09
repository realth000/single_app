import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:single_app/src/single_app_platform_interface.dart';

/// An implementation of [SingleAppPlatform] that uses method channels.
class MethodChannelSingleApp extends SingleAppPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('single_app');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
