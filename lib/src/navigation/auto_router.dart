import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spiks_test/src/features/main_page/main_page.dart';
import 'package:flutter_spiks_test/src/features/splash_screen/splash_screen.dart';
import 'package:flutter_spiks_test/src/features/therapist/presentation/details/therapist_details_page.dart';
import 'package:flutter_spiks_test/src/features/therapist/presentation/search_view/therapist_search_page.dart';
import 'package:flutter_spiks_test/src/features/therapist/presentation/therapist_list_view/therapist_list_page.dart';

import 'navigation.dart';

part 'auto_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  factory AppRouter() => _instance;

  AppRouter._();

  static final _instance = AppRouter._();

  @override
  final routes = <AutoRoute>[
    AutoRoute(
      path: RoutesData.splashPage,
      page: SplashRoute.page,
    ),
    AutoRoute(
      page: MainRoute.page,
      path: RoutesData.main,
      children: [
        AutoRoute(
          initial: true,
          page: TherapistListRoute.page,
          path: RoutesData.therapists,
        ),
        AutoRoute(
          page: AppointmentRoute.page,
          path: RoutesData.sessions,
        ),
        AutoRoute(
          page: ChatsListRoute.page,
          path: RoutesData.chats,
        ),
        AutoRoute(
          page: ProfileRoute.page,
          path: RoutesData.profile,
        ),
      ],
    ),
    AutoRoute(
      page: TherapistSearchRoute.page,
      path: RoutesData.therapistSearch,
      type: RouteType.custom(
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    ),
    AutoRoute(
      page: TherapistDetailsRoute.page,
      path: RoutesData.therapistDetails,
      type: RouteType.custom(
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    ),
  ];
}
