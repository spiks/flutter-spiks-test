import 'package:flutter_spiks_test/core/themes/theme_class.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter/cupertino.dart';

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
      title: Text(title ?? S.of(context).confirmation),
      content: Text(message),
      actions: [
        CupertinoButton(
          child: Text(
            S.of(context).yes,
            style: context.textTheme.bodyMedium?.copyWith(
              color: markConfirmByRed ? context.scheme.error : null,
            ),
          ),
          onPressed: () => Navigator.pop(context, true),
        ),
        CupertinoButton(
          child: Text(
            S.of(context).no,
          ),
          onPressed: () => Navigator.pop(context, false),
        ),
      ],
    );
  }

}
