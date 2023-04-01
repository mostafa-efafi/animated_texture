import 'package:flutter_test/flutter_test.dart';
import 'package:animated_texture/animated_texture.dart';
import 'package:animated_texture/animated_texture_platform_interface.dart';
import 'package:animated_texture/animated_texture_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAnimatedTexturePlatform
    with MockPlatformInterfaceMixin
    implements AnimatedTexturePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AnimatedTexturePlatform initialPlatform = AnimatedTexturePlatform.instance;

  test('$MethodChannelAnimatedTexture is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAnimatedTexture>());
  });

  test('getPlatformVersion', () async {
    AnimatedTexture animatedTexturePlugin = AnimatedTexture();
    MockAnimatedTexturePlatform fakePlatform = MockAnimatedTexturePlatform();
    AnimatedTexturePlatform.instance = fakePlatform;

    expect(await animatedTexturePlugin.getPlatformVersion(), '42');
  });
}
