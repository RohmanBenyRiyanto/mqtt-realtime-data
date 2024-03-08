import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

@injectable
class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState.light());

  void toggleTheme() {
    emit(state.when(
      light: () => const ThemeState.dark(),
      dark: () => const ThemeState.light(),
    ));
  }
}
