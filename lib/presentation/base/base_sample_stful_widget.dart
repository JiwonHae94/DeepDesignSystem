import 'package:flutter/cupertino.dart';

base class BaseSampleStatefulWidget extends StatefulWidget {
  const BaseSampleStatefulWidget({Key? key}) : super(key: key);

  @override
  State<BaseSampleStatefulWidget> createState() => _BaseSampleStatefulWidgetState();
}

class _BaseSampleStatefulWidgetState extends State<BaseSampleStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}