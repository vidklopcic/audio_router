
import 'audio_router_platform_interface.dart';

class AudioRouter {
  Future testAudioRouter() async {
    return AudioRouterPlatform.instance.testAudioRouter();
  }
}
