import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainState());

  void changeScreen(int index) {
    emit(state.copyWith(currentScreen: index));
  }
}
