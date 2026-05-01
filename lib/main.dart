import 'dart:developer';

import 'package:chat_app/core/controller/ui_cubit.dart';
import 'package:chat_app/core/services/shared_pref_service.dart';
import 'package:chat_app/core/theme/dark_theme.dart';
import 'package:chat_app/core/theme/light_theme.dart';
import 'package:chat_app/features/main/presentation/ui/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SharedPrefService.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UiCubit(),
      child: BlocBuilder<UiCubit, UiState>(
        builder: (context, state) {
          log(state.isDark.toString());
          return MaterialApp(
            title: "Let's Connect App",
            debugShowCheckedModeBanner: false,
            darkTheme: darkTheme,
            theme: lightTheme,
            themeMode: state.isDark ? ThemeMode.dark : ThemeMode.light,
            home: MainScreen(),
          );
        },
      ),
    );
  }
}
