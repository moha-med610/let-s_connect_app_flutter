import 'package:chat_app/features/home/presentation/screens/home_screen.dart';
import 'package:chat_app/features/main/controller/main_cubit.dart';
import 'package:chat_app/features/contacts/presentation/screens/contacts_screen.dart';
import 'package:chat_app/features/setting/presentation/ui/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Widget> screens = [
    const HomeScreen(),
    const ContactsScreen(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: BlocBuilder<MainCubit, MainState>(
        builder: (context, state) {
          final int index = context.read<MainCubit>().state.currentScreen;
          return Scaffold(
            body: IndexedStack(index: index, children: screens),
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: BottomNavigationBar(
                elevation: 5.0,

                onTap: (index) {
                  context.read<MainCubit>().changeScreen(index);
                },
                currentIndex: index,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(IconsaxPlusBold.messages_2),
                    label: "Chats",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(IconsaxPlusBold.people),
                    label: "Contacts",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(IconsaxPlusBold.setting_4),
                    label: "Setting",
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
