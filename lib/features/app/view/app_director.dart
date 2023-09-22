import 'package:flutter_spiks_test/features/app/bloc/app_bloc.dart';
import 'package:flutter_spiks_test/features/intro/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppDirector extends StatelessWidget {
  const AppDirector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return const IntroPage();
      },
    );
  }
}
