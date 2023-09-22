import 'package:flutter/cupertino.dart';
import 'package:flutter_spiks_test/src/src.dart';

class ColorWrapper extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;

  const ColorWrapper({
    required this.child,
    this.padding = const EdgeInsets.all(24),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        color: context.scheme.tertiaryContainer.withOpacity(.3),
      ),
      child: child,
    );
  }
}
