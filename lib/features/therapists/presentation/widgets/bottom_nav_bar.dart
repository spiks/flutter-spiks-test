import 'package:flutter/material.dart';
import 'package:flutter_spiks_test/core/themes/theme_class.dart';
import 'package:flutter_spiks_test/core/values/colors/gradients/gradient_resources.dart';
import 'package:flutter_spiks_test/core/values/icons/outline_icons.dart';
import 'package:flutter_spiks_test/core/values/icons/solid_icons.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/router/app_router.dart';
import 'package:flutter_spiks_test/widgets/gap/widgets/gap.dart';
import 'package:flutter_spiks_test/widgets/gradient_mask/gradient_mask.dart';
import 'package:go_router/go_router.dart';

enum BottomNav {
  therapists,
  setting,
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({required this.bottomNav, super.key});

  final BottomNav bottomNav;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: false,
      showSelectedLabels: false,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: const IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: context.scheme.background,
      selectedLabelStyle: context.textTheme.labelSmall,
      unselectedLabelStyle: context.textTheme.labelSmall,
      unselectedItemColor: context.scheme.outline,
      // unselectedLabelStyle: ,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: S.of(context).therapists,
          icon: _NavItem(
            icon: OutlineIcons.percongroup,
            text: S.of(context).therapists,
          ),
          activeIcon: GradientMask(
            gradient: GradientResources.primary3,
            child: _NavItem(
              icon: SolidIcons.percongroup,
              text: S.of(context).therapists,
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: S.of(context).setting,
          icon: _NavItem(
            icon: OutlineIcons.settings,
            text: S.of(context).setting,
          ),
          activeIcon: GradientMask(
            gradient: GradientResources.primary3,
            child: _NavItem(
              icon: OutlineIcons.settings,
              text: S.of(context).setting,
            ),
          ),
        ),
      ],
      currentIndex: bottomNav.index,
      onTap: (value) {
        switch (value) {
          case 0: context.go(AppRouter.therapistsListPath);
          case 1: context.go(AppRouter.settingPath);
        }
      },
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 28),
        const Gap(4),
        Text(
          text,
          style: context.textTheme.labelSmall?.copyWith(
            color: context.scheme.outline,
          ),
        ),
      ],
    );
  }
}
