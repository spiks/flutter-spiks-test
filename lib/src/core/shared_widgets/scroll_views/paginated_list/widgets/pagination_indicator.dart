import 'package:flutter/widgets.dart';

import '../../../../core.dart';

class PaginationIndicator extends StatelessWidget {
  const PaginationIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: CustomCircularProgress(
          borderWidth: 4,
          dimension: 16,
        ),
      ),
    );
  }
}
