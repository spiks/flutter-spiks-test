import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spiks_test/src/features/splash_screen/domain/bloc/splash_screen_bloc.dart';
import 'package:flutter_spiks_test/src/features/splash_screen/internal/splash_page_module.dart';
import 'package:flutter_spiks_test/src/features/splash_screen/view/widgets/splash_loading_indicator.dart';
import 'package:rive/rive.dart';

import '../../../../generated/l10n.dart';
import '../../../core/profile_status/domain/domain.dart';
import '../../../navigation/auto_router.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SplashPageModule.makeSplashScreenBloc(),
      child: const _SplashPage(),
    );
  }
}

class _SplashPage extends StatefulWidget {
  const _SplashPage();

  @override
  State<_SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<_SplashPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late Animation<double> _loaderAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
      lowerBound: 0.2,
    );

    _loaderAnimation =
        CurvedAnimation(parent: _animationController, curve: Curves.decelerate);
    WidgetsBinding.instance
        .addPostFrameCallback((timeStamp) => _animationController.forward());
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  PageRouteInfo<void> _configureRoute({
    required ProfileStatus? status,
    required bool localAuthAvailable,
  }) {
    if (localAuthAvailable) {
      return const LocalAuthRoute();
    }
    switch (status) {
      case ProfileStatus.questionnaire_not_completed_yet:
        return QuestionnaireRoute(
          buttonTitle: L10n.of(context).choosePsych,
        );
      case ProfileStatus.active:
        return const MainRoute();
      default:
        return const AuthRoute();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashScreenBloc, SplashScreenState>(
      listener: (context, state) => state.maybeWhen(
        orElse: () => null,
        nextPageConfigured: (localAuthAvailable, status) {
          final route = _configureRoute(
              localAuthAvailable: localAuthAvailable, status: status);
          _animationController.animateTo(
            1,
            duration: const Duration(milliseconds: 500),
            curve: Curves.decelerate,
          );
          _animationController.addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              context.router.replace(route);
            }
          });
          return null;
        },
      ),
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
                AnimatedBuilder(
                  animation: _loaderAnimation,
                  builder: (BuildContext context, Widget? child) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      height: 20,
                      child: SplashLoadingIndicator(
                        progress: _loaderAnimation.value,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
