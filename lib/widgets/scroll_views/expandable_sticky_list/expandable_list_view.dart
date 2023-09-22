import 'package:flutter/widgets.dart';

import 'package:flutter_spiks_test/widgets/scroll_views/expandable_sticky_list/sliver_expandable_list.dart';

/// A scrollable list of widgets arranged linearly, support expand/collapse item and
/// sticky header.
/// all build options are set in [SliverExpandableChildDelegate], this is to avoid
/// [SliverExpandableList] use generics.
class ExpandableListView extends BoxScrollView {
  ///same as ListView
  final SliverExpandableChildDelegate builder;

  ExpandableListView({
    super.key,
    required this.builder,
    super.reverse,
    super.controller,
    super.primary,
    super.physics,
    super.shrinkWrap,
    super.padding,
    super.cacheExtent,
    super.dragStartBehavior,
  }) : super(
    scrollDirection: Axis.vertical,
    semanticChildCount: builder.sectionList.length,
  );

  @override
  Widget buildChildLayout(BuildContext context) {
    return SliverExpandableList(
      builder: builder,
    );
  }
}
