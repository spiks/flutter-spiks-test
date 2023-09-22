import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_te/src/src.dart';

@RoutePage()
class PlaceholderPage extends StatelessWidget {
  const PlaceholderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              L10n.of(context).workInProgress,
              style: context.textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }
}
