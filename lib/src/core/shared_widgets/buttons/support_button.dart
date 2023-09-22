import 'package:flutter/cupertino.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/src/core/core.dart';
import 'package:flutter_spiks_test/src/src.dart';
import 'package:flutter_spiks_test/src/values/icons/social_icons.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SupportButton extends StatelessWidget {
  const SupportButton({this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () => launchUrlString('https://t.me/mostme_ru',
          mode: LaunchMode.externalApplication),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            L10n.of(context).contactSupport,
            style: context.primaryTextTheme.labelLarge?.copyWith(color: color ?? context.scheme.primary),
          ),
          const Gap(4),
          Icon(
            SocialIcons.telegram,
            size: 24,
            color: color ?? context.scheme.primary,
          ),
        ],
      ),
    );
  }
}