import 'package:chat_app/core/widgets/custom_scaffold.dart';
import 'package:chat_app/features/chat/presentation/widgets/header_widget.dart';
import 'package:chat_app/features/chat/presentation/widgets/message_input_widget.dart';
import 'package:chat_app/features/chat/presentation/widgets/messages_widget.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  final List<dynamic> _messages = [];

  void scrollToBottom() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: Colors.grey.shade300,
      child: Column(
        children: [
          HeaderWidget(),
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(vertical: 10),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final isMe = index % 2 == 0;

                return MessagesWidget(
                  isSeen: true,
                  message: _messages[index],
                  isMe: isMe,
                  time: "10:${index}0",
                );
              },
            ),
          ),
          MessageInput(
            controller: _messageController,
            onTap: () {
              setState(() {
                _messages.add(_messageController.text);
                _messageController.clear();
              });
              WidgetsBinding.instance.addPostFrameCallback((_) {
                scrollToBottom();
              });
            },
          ),
        ],
      ),
    );
  }
}
