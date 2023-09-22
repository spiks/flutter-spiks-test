import 'package:flutter_spiks_test/core/keys/app_keys.dart';
import 'package:flutter_spiks_test/core/spacings/app_spacing.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key(WidgetKeys.homeScaffoldKey),
      appBar: AppBar(
        title: Text(S.of(context).home),
      ),
      body: Center(
        child: Column(
          children: [
            AppSpacing.verticalSpacing32,
            ElevatedButton(
              child: Text(S.of(context).setting),
              onPressed: () {
                context.push(AppRouter.settingPath);
              },
            ),
          ],
        ),
      ),
    );
  }
}
