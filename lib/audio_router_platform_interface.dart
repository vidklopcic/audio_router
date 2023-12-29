import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'audio_router_method_channel.dart';

abstract class AudioRouterPlatform extends PlatformInterface {
  /// Constructs a AudioRouterPlatform.
  AudioRouterPlatform() : super(token: _token);

  static final Object _token = Object();

  static AudioRouterPlatform _instance = MethodChannelAudioRouter();

  /// The default instance of [AudioRouterPlatform] to use.
  ///
  /// Defaults to [MethodChannelAudioRouter].
  static AudioRouterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AudioRouterPlatform] when
  /// they register themselves.
  static set instance(AudioRouterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> testAudioRouter() async {
    throw UnimplementedError('testAudioRouter() has not been implemented.');
  }
}
