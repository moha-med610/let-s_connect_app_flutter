import 'package:chat_app/core/utils/navigation.dart';
import 'package:chat_app/features/home/presentation/screens/add_friend_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class AddFriendIconWidget extends StatelessWidget {
  const AddFriendIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.navigateTo(AddFriendScreen());
      },
      icon: Icon(IconsaxPlusBold.user_cirlce_add, size: 35),
    );
  }
}
