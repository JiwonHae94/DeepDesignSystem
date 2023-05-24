import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'just_design_system_method_channel.dart';

abstract class JustDesignSystemPlatform extends PlatformInterface {
  /// Constructs a JustDesignSystemPlatform.
  JustDesignSystemPlatform() : super(token: _token);

  static final Object _token = Object();

  static JustDesignSystemPlatform _instance = MethodChannelJustDesignSystem();

  /// The default instance of [JustDesignSystemPlatform] to use.
  ///
  /// Defaults to [MethodChannelJustDesignSystem].
  static JustDesignSystemPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [JustDesignSystemPlatform] when
  /// they register themselves.
  static set instance(JustDesignSystemPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
