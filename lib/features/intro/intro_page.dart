import 'package:flutter_spiks_test/core/keys/app_keys.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rive/rive.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

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
                      context.push(AppRouter.homePath);
                    },
                    child: Text(S.of(context).btn_go_to_home_page),
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
