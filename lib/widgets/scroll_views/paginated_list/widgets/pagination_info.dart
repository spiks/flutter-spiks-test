import 'package:flutter/widgets.dart';

class PaginationInfo extends StatelessWidget {
  final String title;

  const PaginationInfo({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(title),
      ),
    );
  }
}
