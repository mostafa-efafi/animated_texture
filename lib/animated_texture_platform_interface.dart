import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'animated_texture_method_channel.dart';

abstract class AnimatedTexturePlatform extends PlatformInterface {
  /// Constructs a AnimatedTexturePlatform.
  AnimatedTexturePlatform() : super(token: _token);

  static final Object _token = Object();

  static AnimatedTexturePlatform _instance = MethodChannelAnimatedTexture();

  /// The default instance of [AnimatedTexturePlatform] to use.
  ///
  /// Defaults to [MethodChannelAnimatedTexture].
  static AnimatedTexturePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AnimatedTexturePlatform] when
  /// they register themselves.
  static set instance(AnimatedTexturePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
