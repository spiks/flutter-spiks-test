import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spiks_te/src/core/shared_widgets/text_fields/search_field.dart';
import 'package:flutter_spiks_te/src/src.dart';

import '../../../../generated/l10n.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final Function(String query) onSearch;
  final String? heroTag;

  const SearchAppBar({
    required this.controller,
    required this.focusNode,
    required this.onSearch,
    this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          const Spacer(),
          Container(
            color: context.scheme.background,
            margin: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Row(
              children: [
                Expanded(
                    child: SearchField(
                  focusNode: focusNode,
                  controller: controller,
                  heroTag: heroTag,
                  onSearch: onSearch,
                )),
                TextButton(
                  onPressed: () => context.router.pop(),
                  child: Text(L10n.of(context).cancel),
                ),
              ],
            ),
          ),
          const Spacer(),
          const Divider(
            height: 0,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}
