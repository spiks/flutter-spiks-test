import 'package:flutter/material.dart';
import 'package:flutter_spiks_test/src/generated/l10n.dart';
import 'package:flutter_spiks_test/src/core/network/utils/pagination/pagination.dart';

import 'widgets/widgets.dart';
import 'utils/types.dart';

class PaginatedSliverList extends StatelessWidget {
  final IndexedWidgetBuilder builder;
  final int childCount;
  final IndexedWidgetBuilder? separatorBuilder;
  final PaginationStatus paginationStatus;
  final LastPageWidgetInfo? lastPageWidgetInfoBuilder;
  final EdgeInsets padding;
  final Widget? errorWidget;

  const PaginatedSliverList({
    super.key,
    required this.builder,
    required this.childCount,
    this.errorWidget,
    this.separatorBuilder,
    this.paginationStatus = PaginationStatus.fetched,
    this.lastPageWidgetInfoBuilder,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: padding,
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final int itemIndex = index ~/ (separatorBuilder != null ? 2 : 1);
            if (itemIndex >= childCount) {
              if (paginationStatus == PaginationStatus.loading) {
                return const PaginationIndicator();
              }
              if (paginationStatus == PaginationStatus.error) {
                return errorWidget ??
                    PaginationInfo(title: L10n.of(context).e_smthWentWrong);
              }
              if (paginationStatus == PaginationStatus.lastPage &&
                  lastPageWidgetInfoBuilder != null) {
                return PaginationInfo(
                  title: lastPageWidgetInfoBuilder!.call(
                    childCount,
                  ),
                );
              }
            }
            if (separatorBuilder != null && index.isOdd) {
              return separatorBuilder!.call(context, index);
            }
            return builder.call(context, itemIndex);
          },
          childCount: _calculateChildCount(
              childCount, separatorBuilder != null, paginationStatus),
          semanticIndexCallback: (Widget _, int index) {
            return index.isEven ? index ~/ 2 : null;
          },
        ),
      ),
    );
  }

  int _calculateChildCount(
    int childCount,
    bool separator,
    PaginationStatus paginationStatus,
  ) {
    return childCount * (separator ? 2 : 1) +
        (paginationStatus == PaginationStatus.fetched ||
                (paginationStatus == PaginationStatus.lastPage &&
                    lastPageWidgetInfoBuilder == null)
            ? 0
            : 1);
  }
}
