import 'package:flutter/material.dart';

class SafeAreaWrapper extends StatelessWidget {
  const SafeAreaWrapper({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: child);
  }
}
