import 'package:flutter_spiks_test/features/app/view/app.dart';
import 'package:flutter/material.dart';

import 'robot_tester_base.dart';

class AppRobot extends RobotTesterBase {
  AppRobot(super.tester);
  void restartApp() {
    runApp(
      App(
        key: UniqueKey(),
      ),
    );
  }
}
