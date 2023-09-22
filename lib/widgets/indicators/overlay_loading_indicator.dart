import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OverlayLoadingIndicator extends StatefulWidget {
  final bool visible;

  const OverlayLoadingIndicator({super.key, required this.visible});

  @override
  State<OverlayLoadingIndicator> createState() =>
      _OverlayLoadingIndicatorState();
}

class _OverlayLoadingIndicatorState extends State<OverlayLoadingIndicator> {
  bool _visible = true;

  @override
  void initState() {
    super.initState();
    assert(widget.visible == true, 'Initial value should be true');
  }

  @override
  void didUpdateWidget(covariant OverlayLoadingIndicator oldWidget) {
    if (oldWidget.visible != widget.visible) {
      if (!widget.visible) {
        setState(() {
          _visible = widget.visible;
        });
        Future.delayed(
          const Duration(milliseconds: 100),
          () => context.pop(true),
        );
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(!_visible),
      child: ColoredBox(
        color: Colors.black.withOpacity(0.5),
        child: const Center(
          child: SizedBox.square(
            dimension: 48,
            child: CupertinoActivityIndicator(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
