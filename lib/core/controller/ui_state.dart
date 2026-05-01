part of 'ui_cubit.dart';

class UiState extends Equatable {
  final bool isDark;

  const UiState({required this.isDark});

  UiState copyWith({bool? isDark}) {
    return UiState(isDark: isDark ?? this.isDark);
  }

  @override
  List<Object?> get props => [isDark];
}
