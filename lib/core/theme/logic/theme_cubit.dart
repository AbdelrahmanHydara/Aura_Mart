import 'package:aura_mart/core/theme/theme_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial(AppTheme.light)) {
    _init();
  }

  late SharedPreferences _prefs;
  bool _isDark = false;

  Future<void> _init() async {
    _prefs = await SharedPreferences.getInstance();
    _isDark = _prefs.getBool('isDark') ?? false;
    emit(ThemeInitial(_isDark ? AppTheme.dark : AppTheme.light));
  }

  void toggleTheme() {
    _isDark = !_isDark;
    _prefs.setBool('isDark', _isDark);
    emit(ThemeInitial(_isDark ? AppTheme.dark : AppTheme.light));
  }
}
