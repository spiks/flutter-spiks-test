import 'package:flutter/widgets.dart';
import 'package:flutter_spiks_test/src/src.dart';

import '../../../../../core/core.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final int itemCount;

  const TitleWidget({super.key, required this.title, this.itemCount = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: context.textTheme.titleLarge,
        ),
        const Spacer(),
        CounterWidget(
          count: itemCount,
        ),
      ],
    );
  }
}
