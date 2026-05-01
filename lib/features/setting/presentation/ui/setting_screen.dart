import 'package:chat_app/core/widgets/custom_scaffold.dart';
import 'package:chat_app/core/widgets/shared_app_bar_widget.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(child: Center(child: Text("Setting")));
  }
}
