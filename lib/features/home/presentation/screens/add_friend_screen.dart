import 'dart:developer';

import 'package:chat_app/core/widgets/custom_scaffold.dart';
import 'package:chat_app/core/widgets/custom_text_form_filed.dart';
import 'package:flutter/material.dart';

class AddFriendScreen extends StatefulWidget {
  const AddFriendScreen({super.key});

  @override
  State<AddFriendScreen> createState() => _AddFriendScreenState();
}

class _AddFriendScreenState extends State<AddFriendScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: CustomTextFormFiled(
            hint: "Search",
            controller: _searchController,
            onChanged: (value) => log(value.toString()),
          ),
        ),
      ),
      child: Container(),
    );
  }
}
