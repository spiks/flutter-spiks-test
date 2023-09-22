import 'package:flutter/cupertino.dart';
import 'package:flutter_spiks_test//src/core/network/utils/pagination/pagination.dart';

class PaginationListener extends StatelessWidget {
  final Widget child;
  final PaginationStatus paginationStatus;
  final VoidCallback paginationCallback;
  final double paginationPoint;
  final Axis paginationAxis;

  const PaginationListener({
    super.key,
    required this.child,
    required this.paginationStatus,
    required this.paginationCallback,
    this.paginationPoint = 0.8,
    this.paginationAxis = Axis.vertical,
  }) : assert(paginationPoint < 1 && paginationPoint > 0);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: (notification) {
        if (paginationStatus != PaginationStatus.fetched) {
          return true;
        }
        if (notification.metrics.pixels >
                notification.metrics.maxScrollExtent * paginationPoint &&
            notification.metrics.axis == paginationAxis) {
          paginationCallback.call();
        }
        return false;
      },
      child: child,
    );
  }
}
