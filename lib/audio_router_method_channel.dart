import 'package:audio_router/proto/audio_router.pb.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'audio_router_platform_interface.dart';

/// An implementation of [AudioRouterPlatform] that uses method channels.
class MethodChannelAudioRouter extends AudioRouterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('audio_router');

  @override
  Future<void> testAudioRouter() async {
    try {
      final message = Test()
        ..testS = 'Example String'
        ..testI = 42;

      final messageBytes = message.writeToBuffer();

      final String response = await methodChannel.invokeMethod('test', messageBytes);
      print('Response from platform: $response');
    } on PlatformException catch (e) {
      print("Failed to call 'test': ${e.message}");
    }
  }
}
