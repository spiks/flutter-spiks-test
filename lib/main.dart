import 'dart:developer';

import 'package:logging/logging.dart';
import 'package:flutter_spiks_test/src/app/app.dart';
import 'package:flutter_spiks_test/src/core/bootstrap.dart';

void main() {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    log('${record.level.name}-${record.loggerName} => ${record.message}');
  });
  Bootstrap.init(() => const App());
}
