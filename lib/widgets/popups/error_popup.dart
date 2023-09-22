import 'package:flutter_spiks_test/core/themes/theme_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';


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
        S.of(context).error,
        style: context.textTheme.labelLarge?.copyWith(
          color: context.scheme.onBackground,
          fontWeight: FontWeight.w600,
        ),
      ),
      content: Column(
        children: [
          Text(message??S.of(context).e_smthWentWrong),
          ...children,
        ],
      ),
      actions: [
        CupertinoButton(
          child: Text(
            S.of(context).ok,
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
