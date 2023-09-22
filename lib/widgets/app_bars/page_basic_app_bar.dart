import 'package:flutter_spiks_test/core/themes/theme_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../gap/widgets/gap.dart';


class PageBasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? imagePath;
  final Widget? action;

  const PageBasicAppBar({
    super.key,
    required this.title,
    this.imagePath,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        decoration: BoxDecoration(
          color: context.scheme.background,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Row(
                children: [
                  if (imagePath != null)
                    SvgPicture.asset(
                      imagePath!,
                      height: 64,
                    ),
                  if (imagePath != null) const Gap(10),
                  Text(
                    title,
                    style: context.textTheme.headlineMedium,
                  ),
                  const Spacer(),
                  if (action != null) action!,
                ],
              ),
            ),
            const Spacer(),
            const Divider(
              height: 0,
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(72);
}
