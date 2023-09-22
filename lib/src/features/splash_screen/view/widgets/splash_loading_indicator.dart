import 'package:flutter/material.dart';

import 'package:flutter_spiks_test/st/src/src.dart';

class SplashLoadingIndicator extends StatelessWidget {
  const SplashLoadingIndicator({
    super.key,
    required this.progress,
  }) : assert(progress > 0 || progress < 1, 'Progress value must be >0 and <1');

  final double progress;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: progress,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              gradient: GradientResources.primary1Reversed,
            ),
          ),
          Theme(
            data: Theme.of(context).copyWith(
              iconTheme: IconThemeData(
                color: context.scheme.onBackground,
              ),
            ),
            child: Row(
              children: const [
                Icon(
                  LettersIcons.mLetter,
                  size: 20,
                ),
                SizedBox(
                  width: 4,
                ),
                Icon(
                  LettersIcons.oLetter,
                  size: 20,
                ),
                Spacer(),
                Icon(
                  LettersIcons.sLetter,
                  size: 20,
                ),
                Icon(
                  LettersIcons.tLetter,
                  size: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
