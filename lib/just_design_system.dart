
import 'just_design_system_platform_interface.dart';

class JustDesignSystem {
  Future<String?> getPlatformVersion() {
    return JustDesignSystemPlatform.instance.getPlatformVersion();
  }
}
