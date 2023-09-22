import 'package:flutter_spiks_test/core/themes/theme_class.dart';
import 'package:flutter_spiks_test/core/values/colors/colors.dart';
import 'package:flutter/cupertino.dart';

class CounterWidget extends StatelessWidget {
  final int count;
  final double size;
  const CounterWidget({super.key, this.count = 0, this.size = 24});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: ClipOval(
        child: count != 0
            ? Container(
                color: context.accent?.sourceAccent,
                child: FittedBox(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    transitionBuilder: (child, animation) => ScaleTransition(
                      scale: animation,
                      child: child,
                    ),
                    child: Text(
                      count.toString(),
                      key: ValueKey<int>(count),
                      style: context.textTheme.bodySmall?.copyWith(
                        color: context.scheme.background,
                      ),
                    ),
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
