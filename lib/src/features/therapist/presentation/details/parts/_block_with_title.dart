import 'package:flutter/material.dart';
import 'package:flutter_spiks_test/src/core/shared_widgets/gap/gap.dart';

class BlockWithTitle extends StatelessWidget {
  const BlockWithTitle({
    super.key,
    required this.title,
    required this.children,
    required this.gap,
  });

  final Widget title;
  final List<Widget> children;
  final double gap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title,
        Gap(gap),
        ...children,
      ],
    );
  }
}
