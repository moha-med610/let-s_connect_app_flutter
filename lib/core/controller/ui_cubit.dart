import 'package:bloc/bloc.dart';
import 'package:chat_app/core/constants/shared_pref_keys.dart';
import 'package:chat_app/core/services/shared_pref_service.dart';
import 'package:equatable/equatable.dart';

part 'ui_state.dart';

class UiCubit extends Cubit<UiState> {
  UiCubit() : super(UiState(isDark: false)) {
    // loadTheme();
  }

  void loadTheme() async {
    final isDark = SharedPrefService.getBool(SharedPrefKeys.theme) ?? false;
    emit(state.copyWith(isDark: isDark));
  }

  void toggleTheme() async {
    final value = !state.isDark;
    await SharedPrefService.setData(SharedPrefKeys.theme, value);
    emit(state.copyWith(isDark: value));
  }
}
