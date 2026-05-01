import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, this.appBar, required this.child});

  final PreferredSizeWidget? appBar;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(child: child),
    );
  }
}
