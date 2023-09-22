import 'package:flutter/widgets.dart';

import 'package:flutter_spiks_test/src/core/di/injector.dart';

abstract class Bootstrap {
  static Future<void> init(Widget Function() builder) async {
    WidgetsFlutterBinding.ensureInitialized();
    await Injector.init();
    runApp(builder());
  }
}
