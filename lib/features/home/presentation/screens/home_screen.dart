import 'package:chat_app/core/widgets/custom_scaffold.dart';
import 'package:chat_app/core/widgets/shared_app_bar_widget.dart';
import 'package:chat_app/features/home/presentation/widgets/add_friend_icon_widget.dart';
import 'package:chat_app/features/home/presentation/widgets/categories_widgets.dart';
import 'package:chat_app/features/home/presentation/widgets/chat_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            SharedAppBarWidget(
              title: "Chats",
              actions: [AddFriendIconWidget()],
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  SizedBox(height: 10),
                  CategoriesWidgets(),
                  SizedBox(height: 10),
                ],
              ),
            ),

            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return const ChatWidget();
              }, childCount: 10),
            ),
          ],
        ),
      ),
    );
  }
}
