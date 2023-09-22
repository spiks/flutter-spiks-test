import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_spiks_test/src/core/shared_widgets/gap/gap.dart';
import 'package:flutter_spiks_test/src/src.dart';
import 'package:flutter_spiks_test/src/values/icons/outline_icons.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.title,
    required this.description,
    required this.children,
  });

  final Widget title;
  final Widget description;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        title,
        const Gap(16),
        description,
        const Gap(4),
        ...children,
      ],
    );
  }
}

class MyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget title;

  MyHeaderDelegate({
    required this.title,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    if (shrinkOffset == maxExtent) {
      return Container(
        color: context.scheme.background,
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).padding.top, bottom: 8),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            children: [
              IconButton(
                onPressed: context.router.pop,
                padding: const EdgeInsets.all(12),
                icon: Icon(
                  OutlineIcons.arrowleft,
                  color: context.scheme.onPrimary,
                  size: 32,
                ),
              ),
              Expanded(child: title),
              const Gap(8),
              IconButton(
                onPressed: () {},
                padding: const EdgeInsets.all(12),
                icon: Icon(
                  OutlineIcons.message,
                  color: context.scheme.primary,
                  size: 32,
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return const Opacity(
        opacity: 0,
        child: SizedBox(
          height: 128,
        ),
      );
    }
  }

  @override
  double get maxExtent => 128;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
