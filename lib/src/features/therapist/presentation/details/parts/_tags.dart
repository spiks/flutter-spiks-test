import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/src/src.dart';

class Tags extends StatelessWidget {
  const Tags({super.key, required this.tags});

  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      theme: const ExpandableThemeData(
        hasIcon: false,
      ),
      collapsed: Column(
        children: [
          Wrap(
            children: [
              ...tags
                  .take(4)
                  .map<Widget>(
                    (e) => Chip(
                      label: Text(
                        e,
                        style: context.textTheme.bodySmall?.copyWith(
                          color: context.scheme.primary,
                        ),
                      ),
                    ),
                  )
                  .separate(
                    const SizedBox(width: 4),
                    withTrailingSeparator: true,
                  ),
              if (tags.length > 4)

                /// ExpandableController needs more local context
                /// with ExpandableNotifier
                Builder(
                  builder: (context) => InputChip(
                    label: Text(
                      L10n.of(context).moreWithDots,
                      style: context.textTheme.bodySmall?.copyWith(
                        color: context.scheme.primary,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    side: BorderSide.none,
                    onPressed: ExpandableController.of(context, required: true)!
                        .toggle,
                  ),
                ),
            ],
          ),
        ],
      ),
      expanded: Wrap(
        children: [
          ...tags
              .map<Widget>(
                (e) => Chip(
                  label: Text(
                    e,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.scheme.primary,
                    ),
                  ),
                ),
              )
              .separate(
                const SizedBox(width: 4),
              ),
        ],
      ),
    );
  }
}
