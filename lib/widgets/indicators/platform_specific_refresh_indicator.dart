import 'package:flutter/material.dart';

typedef UpdateCallback = Future Function();

class PlatformSpecificSliverRefreshIndicator extends StatelessWidget {
  final Widget child;
  final UpdateCallback onRefresh;
  final Key? refreshKey;

  const PlatformSpecificSliverRefreshIndicator({
    super.key,
    required this.child,
    required this.onRefresh,
    this.refreshKey,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator.adaptive(
      onRefresh: onRefresh,
      key: refreshKey,
      child: child,
    );
  }
}
