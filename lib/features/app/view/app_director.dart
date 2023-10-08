import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spiks_test/core/keys/app_keys.dart';
import 'package:flutter_spiks_test/features/app/bloc/app_bloc.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/router/app_router.dart';
import 'package:go_router/go_router.dart';
import 'package:rive/rive.dart';

class AppDirector extends StatelessWidget {
  const AppDirector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return const IntroWiget();
      },
    );
  }
}


class IntroWiget extends StatelessWidget {
  const IntroWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom + 32,
            ),
            child: SizedBox.expand(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  const RiveAnimation.asset('assets/rive/splash_animation.riv'),

                  ElevatedButton(
                    key: const Key(WidgetKeys.introStartedButtonKey),
                    onPressed: () {
                      // router push to HOME
                      context.push(AppRouter.therapistsListPath);
                    },
                    child: Text(S.of(context).therapists),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
