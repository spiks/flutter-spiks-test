import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_switcher_event.dart';

part 'theme_switcher_bloc.freezed.dart';

class ThemeSwitcherBloc extends Bloc<ThemeSwitcherEvent, ThemeMode> {
  ThemeSwitcherBloc() : super(ThemeMode.light) {
    on<_Toggle>(_onToggle);
  }

  FutureOr<void> _onToggle(_Toggle event, Emitter<ThemeMode> emit) {
    if (state == ThemeMode.light) {
      emit(ThemeMode.dark);
    } else {
      emit(ThemeMode.light);
    }
  }
}
