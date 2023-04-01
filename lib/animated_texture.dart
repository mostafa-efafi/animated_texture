
import 'animated_texture_platform_interface.dart';

class AnimatedTexture {
  Future<String?> getPlatformVersion() {
    return AnimatedTexturePlatform.instance.getPlatformVersion();
  }
}
