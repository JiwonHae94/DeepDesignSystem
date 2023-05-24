import 'package:flutter/material.dart';

import '../presentation.dart';

final class ChildSampleStatelessWidget extends BaseSampleStatelessWidget {
  const ChildSampleStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(color : Colors.red);
  }
}
