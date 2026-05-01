part of 'main_cubit.dart';

class MainState {
  final int currentScreen;

  MainState({this.currentScreen = 0});

  MainState copyWith({int? currentScreen}) {
    return MainState(currentScreen: currentScreen ?? this.currentScreen);
  }
}
