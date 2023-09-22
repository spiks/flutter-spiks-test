import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../../../../../src.dart';

class ExpandableBlockWithTitle extends StatelessWidget {
  const ExpandableBlockWithTitle({
    super.key,
    required this.title,
    required this.children,
  });

  final Widget title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      header: title,
      theme: ExpandableThemeData(
        useInkWell: false,
        headerAlignment: ExpandablePanelHeaderAlignment.center,
        iconColor: context.scheme.tertiary,
      ),
      collapsed: const SizedBox.shrink(),
      expanded: Column(
        children: children,
      ),
    );
  }
}
