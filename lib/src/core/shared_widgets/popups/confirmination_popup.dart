import 'package:flutter/cupertino.dart';
import 'package:flutter_spiks_test//src/src.dart';

import '../../../../generated/l10n.dart';

Future<bool> showConfirmationPopup(
  BuildContext context,
  String message,
) async {
  return (await showCupertinoDialog<bool>(
        context: context,
        builder: (context) => ConfirmationPopup(
          message: message,
        ),
      )) ??
      false;
}

class ConfirmationPopup extends StatelessWidget {
  final String? title;
  final String message;
  final bool markConfirmByRed;

  const ConfirmationPopup({
    super.key,
    required this.message,
    this.markConfirmByRed = true,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title ?? L10n.of(context).confirmation),
      content: Text(message),
      actions: [
        CupertinoButton(
          child: Text(
            L10n.of(context).yes,
            style: context.textTheme.bodyMedium?.copyWith(
              color: markConfirmByRed ? context.scheme.error : null,
            ),
          ),
          onPressed: () => Navigator.pop(context, true),
        ),
        CupertinoButton(
          child: Text(
            L10n.of(context).no,
          ),
          onPressed: () => Navigator.pop(context, false),
        ),
      ],
    );
  }

}
