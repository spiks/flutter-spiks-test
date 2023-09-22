import 'package:flutter_spiks_test/core/themes/theme_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomSheetAppBar extends StatelessWidget
    implements ObstructingPreferredSizeWidget {
  final Color? backgroundColor;
  final String title;
  final String? backButtonText;
  final Widget? trailing;

  const BottomSheetAppBar({
    super.key,
    this.backgroundColor,
    required this.title,
    this.backButtonText,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      automaticallyImplyLeading: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      border: null,
      padding: const EdgeInsetsDirectional.only(
        bottom: 8,
        start: 20,
        end: 20,
      ),
      middle: Text(
        title,
        style: context.textTheme.labelMedium,
        textAlign: TextAlign.center,
      ),
      leading: backButtonText != null
          ? CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                context.pop(true);
              },
              child: Text(
                backButtonText!,
                style: context.textTheme.labelMedium!.copyWith(
                  color: context.scheme.primary,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          : null,
      trailing: trailing,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    final Color backgroundColor = CupertinoDynamicColor.maybeResolve(
          this.backgroundColor ?? context.scheme.background,
          context,
        ) ??
        CupertinoTheme.of(context).barBackgroundColor;
    return backgroundColor.alpha == 0xFF;
  }
}
