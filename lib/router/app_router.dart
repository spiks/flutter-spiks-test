import 'package:flutter_spiks_test/features/app/view/app_director.dart';
import 'package:flutter_spiks_test/features/setting/setting_page.dart';
import 'package:flutter_spiks_test/features/therapistDetailsPage/view/therapist_details_page.dart';
import 'package:flutter_spiks_test/features/therapists/presentation/therapists_list_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();

  static const String appDirector = 'appDirector';
  static const String appDirectorPath = '/';

  // страница для настройки переводов и выбора темы
  static const String settingNamed = 'setting';
  static const String settingPath = '/setting';

  // страница со списком врачей
  static const String therapistsListNamed = 'therapists';
  static const String therapistsListPath = '/therapists';

  // страница со врача
  static const String therapistDetailsNamed = 'therapistDetails';
  static const String therapistDetailsPath = '$therapistsListPath/:therapistId';

  static GoRouter get router => _router;
  static final _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        name: appDirector,
        path: appDirectorPath,
        builder: (context, state) {
          return const AppDirector();
        },
      ),
      GoRoute(
        name: settingNamed,
        path: settingPath,
        builder: (context, state) => const SettingPage(),
      ),

      // @TODO реализовать
      GoRoute(
        name: therapistsListNamed,
        path: therapistsListPath,
        builder: (context, state) => const TherapistsListPage(),
      ),
      GoRoute(
        name: therapistDetailsNamed,
        path: therapistDetailsPath,
        builder: (context, state) {
          final therapistId = state.params['therapistId']!;
          return TherapistDetailsPage(therapistId: therapistId,);
        },
      ),
    ],
  );
}
