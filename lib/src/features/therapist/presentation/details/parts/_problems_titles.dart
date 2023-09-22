import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/src/values/values.dart';


class ProblemsTitles extends StatefulWidget {
  final List<String> titles;

  const ProblemsTitles({super.key, required this.titles});

  @override
  State<ProblemsTitles> createState() => _ProblemsTitlesState();
}

class _ProblemsTitlesState extends State<ProblemsTitles> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    if (widget.titles.isEmpty) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 4,
          children: [
            ...widget.titles
                .map(
                  (e) => _ProblemsItem(
                    title: e,
                  ),
                )
                .take(expanded ? widget.titles.length : 9),
          ],
        ),
        if (widget.titles.length > 9)
          _ShowMoreButton(
            expanded: expanded,
            onTap: () => setState(() {
              expanded = !expanded;
            }),
            elementsLeft: widget.titles.length - 9,
          ),
      ],
    );
  }
}

class _ProblemsItem extends StatelessWidget {
  final String title;

  const _ProblemsItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(40)),
        border: Border.all(color: context.scheme.primary),
      ),
      child: Text(
        title,
        style: context.textTheme.bodySmall
            ?.copyWith(color: context.scheme.primary),
      ),
    );
  }
}

class _ShowMoreButton extends StatelessWidget {
  final bool expanded;
  final VoidCallback onTap;
  final int elementsLeft;

  const _ShowMoreButton(
      {super.key,
      required this.expanded,
      required this.onTap,
      required this.elementsLeft});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            expanded
                ? L10n.of(context).hide
                : L10n.of(context).expandable_count(elementsLeft),
            style: context.textTheme.titleSmall
                ?.copyWith(color: context.scheme.primary.withOpacity(.7)),
          ),
          Icon(
            expanded
                ? Icons.keyboard_arrow_up_rounded
                : Icons.keyboard_arrow_down_rounded,
            color: context.scheme.primary.withOpacity(.7),
          )
        ],
      ),
    );
  }
}
