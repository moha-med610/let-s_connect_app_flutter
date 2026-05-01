import 'package:chat_app/core/widgets/custom_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class MessageInput extends StatelessWidget {
  const MessageInput({
    super.key,
    required this.controller,
    required this.onTap,
  });

  final TextEditingController controller;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border(top: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),

              child: CustomTextFormFiled(
                minLines: 1,
                maxLines: 3,
                controller: controller,
                hint: "Type a message...",
              ),
            ),
          ),

          const SizedBox(width: 8),

          GestureDetector(
            onTap: onTap,
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Color(0XFF1EA896),
              child: const Icon(IconsaxPlusBold.send_2, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
