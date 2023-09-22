import 'package:flutter/cupertino.dart';
import 'package:flutter_spiks_test//src/src.dart';

import '../../../../generated/l10n.dart';

void showErrorPopup({
  required BuildContext context,
  String? message,
}) =>
    showCupertinoDialog(
      context: context,
      builder: (_) => ErrorPopup(message: message),
    );

class ErrorPopup extends StatelessWidget {
  final String? message;
  final List<Widget> children;

  const ErrorPopup({
    super.key,
    this.message,
    this.children = const [],
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(
        L10n.of(context).error,
        style: context.textTheme.labelLarge?.copyWith(
          color: context.scheme.onBackground,
          fontWeight: FontWeight.w600,
        ),
      ),
      content: Column(
        children: [
          Text(message??L10n.of(context).e_smthWentWrong),
          ...children,
        ],
      ),
      actions: [
        CupertinoButton(
          child: Text(
            L10n.of(context).ok,
            style: context.textTheme.labelLarge?.copyWith(
              color: context.scheme.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          onPressed: () => Navigator.pop(context),
        )
      ],
    );
  }
}
