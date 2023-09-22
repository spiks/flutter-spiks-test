import 'package:flutter_spiks_test/features/app/view/app_director.dart';
import 'package:flutter_spiks_test/features/home/home_page.dart';
import 'package:flutter_spiks_test/features/setting/setting_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();

  static const String appDirector = 'appDirector';
  static const String appDirectorPath = '/';

  // страница навигации
  static const String homeNamed = 'home';
  static const String homePath = '/home';

  // страница для настройки переводов и выбора темы
  static const String settingNamed = 'setting';
  static const String settingPath = '/setting';

  // страница со списком врачей
  static const String therapistListNamed = 'therapist';
  static const String therapistListPath = '/therapist';

  // страница со врача
  static const String therapistListItemNamed = 'therapistItem';
  static const String therapistListItemPath = '$therapistListPath:therapistId';

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
        name: homeNamed,
        path: homePath,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: settingNamed,
        path: settingPath,
        builder: (context, state) => const SettingPage(),
      ),
      // реализовать
      // GoRoute(
      //   name: therapistListNamed,
      //   path: therapistListPath,
      //   builder: (context, state) => const TherapistListPage(),
      // ),
      // GoRoute(
      //   name: therapistListItemNamed,
      //   path: therapistListItemPath,
      //   builder: (context, state) => const TherapistItemPage(),
      // ),
    ],
  );
}
