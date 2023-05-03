import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:theme_change/cubits/theme_change/theme_change_state.dart';

class ThemeChangeCubit extends Cubit<ThemeChangeState> {
  ThemeChangeCubit() : super(ThemeChangeState(theme: ThemeData.light()));

  // create a method to change the state

  void toggleTheme() {
    if (state.theme == ThemeData.light()) {
      final updateState = ThemeChangeState(
        theme: ThemeData.dark(),
      );
      emit(updateState);
    } else {
      final updateState = ThemeChangeState(
        theme: ThemeData.light(),
      );
      emit(updateState);
    }
  }
}
