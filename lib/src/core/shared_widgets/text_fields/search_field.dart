import 'package:flutter/cupertino.dart';
import 'package:flutter_spiks_test/src/src.dart';

import '../../../values/icons/outline_icons.dart';
import '../../../values/icons/solid_icons.dart';

class SearchField extends StatefulWidget {
  final void Function(String) onSearch;
  final FocusNode focusNode;
  final TextEditingController controller;
  final String? heroTag;

  const SearchField({super.key, required this.onSearch, required this.focusNode, required this.controller, this.heroTag});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> with SingleTickerProviderStateMixin{
  late final AnimationController _opacityController;

  @override
  void initState() {
    super.initState();
    _opacityController = AnimationController(
      vsync: this,
      lowerBound: 0.5,
      duration: const Duration(milliseconds: 300),
    );

    widget.focusNode.addListener(() {
      if (widget.focusNode.hasFocus &&
          _opacityController.value == _opacityController.lowerBound) {
        _opacityController.forward();
      } else {
        if (_opacityController.value == _opacityController.upperBound) {
          _opacityController.reverse();
        }
      }
    });
  }

  @override
  void dispose() {
    _opacityController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _opacityController,
      builder: (context, child)=> CupertinoTextField(
        textInputAction: TextInputAction.search,
        cursorHeight: 20,
        suffixMode: OverlayVisibilityMode.editing,
        onSubmitted: widget.onSearch,
        focusNode: widget.focusNode,
        prefix: Padding(
          padding: const EdgeInsets.only(left: 4),
          child: GestureDetector(
            onTap: () => widget.onSearch(widget.controller.text),
            child: Hero(
              tag: widget.heroTag ?? '_',
              child: Icon(
                OutlineIcons.search,
                color: context.scheme.primary
                    .withOpacity(_opacityController.value),
              ),
            ),
          ),
        ),
        controller: widget.controller,
        suffix: Padding(
          padding: const EdgeInsets.only(right: 4),
          child: GestureDetector(
            onTap: () => widget.controller.clear(),
            child: Icon(
              SolidIcons.multiplay,
              color: context.scheme.tertiary.withOpacity(0.5),
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: context.scheme.primary.withOpacity(0.1),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(
            color: context.scheme.primary.withOpacity(
              _opacityController.value,
            ),
          ),
        ),
      ),
    );
  }
}