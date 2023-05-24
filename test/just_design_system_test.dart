import 'package:flutter_test/flutter_test.dart';
import 'package:just_design_system/just_design_system.dart';
import 'package:just_design_system/just_design_system_platform_interface.dart';
import 'package:just_design_system/just_design_system_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockJustDesignSystemPlatform
    with MockPlatformInterfaceMixin
    implements JustDesignSystemPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final JustDesignSystemPlatform initialPlatform = JustDesignSystemPlatform.instance;

  test('$MethodChannelJustDesignSystem is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelJustDesignSystem>());
  });

  test('getPlatformVersion', () async {
    JustDesignSystem justDesignSystemPlugin = JustDesignSystem();
    MockJustDesignSystemPlatform fakePlatform = MockJustDesignSystemPlatform();
    JustDesignSystemPlatform.instance = fakePlatform;

    expect(await justDesignSystemPlugin.getPlatformVersion(), '42');
  });
}
