import 'package:flutter/material.dart';
import 'values/pagination_status.dart';
import 'widgets/widgets.dart';
import 'utils/types.dart';

class PaginatedList extends StatelessWidget {
  final PaginationStatus paginationStatus;
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final IndexedWidgetBuilder? separatorBuilder;
  final VoidCallback paginationCallback;
  final LastPageWidgetInfo? lastPageWidgetBuilder;
  final double paginationPoint;
  final bool? primary;
  final EdgeInsets padding;
  final ScrollPhysics? physics;
  final Widget? loader;

  final bool reverse;

  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;

  const PaginatedList({
    required this.paginationStatus,
    required this.itemCount,
    required this.itemBuilder,
    required this.paginationCallback,
    this.lastPageWidgetBuilder,
    this.paginationPoint = 0.85,
    this.separatorBuilder,
    this.primary,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
    this.physics,
    this.reverse = false,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
    this.loader,
  }) : assert(
          paginationPoint < 1 && paginationPoint > 0,
        );

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: (notification) {
        if (paginationStatus != PaginationStatus.fetched) {
          return true;
        }
        if (notification.metrics.pixels >
            notification.metrics.maxScrollExtent * paginationPoint) {
          paginationCallback.call();
        }
        return false;
      },
      child: ListView.separated(
        primary: primary,
        padding: padding,
        physics: physics,
        reverse: reverse,
        keyboardDismissBehavior: keyboardDismissBehavior,
        separatorBuilder: (context, index) => separatorBuilder != null
            ? separatorBuilder!.call(context, index)
            : const SizedBox.shrink(),
        itemCount: itemCount +

            /// if fetched or lastPage & lastPageWidgetBuilder is null return 0 else 1

            ((paginationStatus == PaginationStatus.fetched ||
                    (paginationStatus == PaginationStatus.lastPage &&
                        lastPageWidgetBuilder == null))
                ? 0
                : 1),
        itemBuilder: (context, index) {
          if (index >= itemCount) {
            if (paginationStatus == PaginationStatus.loading) {
              return const PaginationIndicator();
            }
            if (paginationStatus == PaginationStatus.error) {
             throw Error();
            }
            if (paginationStatus == PaginationStatus.lastPage &&
                lastPageWidgetBuilder != null) {
              return PaginationInfo(
                title: lastPageWidgetBuilder!.call(itemCount),
              );
            }
          }
          return itemBuilder.call(context, index);
        },
      ),
    );
  }
}
