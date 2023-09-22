import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/src/core/shared_widgets/gap/gap.dart';
import 'package:flutter_spiks_test/src/src.dart';
import 'package:flutter_spiks_test/src/values/icons/outline_icons.dart';

class FilterAppBar extends StatefulWidget {
  final bool expanded;

  const FilterAppBar({super.key, this.expanded = false});

  @override
  State<FilterAppBar> createState() => _FilterAppBarState();
}

class _FilterAppBarState extends State<FilterAppBar>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  late final Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.fastLinearToSlowEaseIn,
    );
    if (widget.expanded) {
      _animationController.value = 1;
    }
    super.initState();
  }

  @override
  void didUpdateWidget(covariant FilterAppBar oldWidget) {
    if (widget.expanded == true) {
      log('forward');
      _animationController.forward();
    } else {
      log('backward');
      _animationController.reverse();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (_, __) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 16,
          left: 24,
          right: 24,
        ),
        decoration: BoxDecoration(
          color: ColorTween(begin: Colors.white, end: Colors.blueAccent)
              .animate(_animation)
              .value,
          borderRadius: const BorderRadius.all(Radius.circular(24)),
        ),
        child: Wrap(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      L10n.of(context).therapists,
                      style: context.textTheme.headlineMedium?.copyWith(
                        color:
                            ColorTween(begin: Colors.black, end: Colors.white)
                                .animate(_animation)
                                .value,
                      ),
                    ),
                    const Spacer(),
                    FadeTransition(
                      opacity: _animation,
                      child: SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(8, 0),
                          end: Offset.zero,
                        ).animate(_animation),
                        child: Icon(
                          OutlineIcons.anceta,
                          size: 32,
                          color: ColorTween(
                            begin: Colors.blueAccent,
                            end: Colors.white,
                          ).animate(_animation).value,
                        ),
                      ),
                    ),
                    const Gap(32),
                    Icon(
                      OutlineIcons.search,
                      size: 32,
                      color: ColorTween(
                        begin: Colors.blueAccent,
                        end: Colors.white,
                      ).animate(_animation).value,
                    ),
                    const Gap(32),
                    Icon(
                      OutlineIcons.settings,
                      size: 32,
                      color: ColorTween(
                        begin: Colors.blueAccent,
                        end: Colors.white,
                      ).animate(_animation).value,
                    ),
                  ],
                ),
                const Gap(16),
                FadeTransition(
                  opacity: _animation,
                  child: SizeTransition(
                    sizeFactor: _animation,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 64,
                          margin: const EdgeInsets.symmetric(horizontal: 24),
                          color: Colors.white,
                        ),
                        const Gap(16),
                        Container(
                          width: double.infinity,
                          height: 64,
                          margin: const EdgeInsets.symmetric(horizontal: 24),
                          color: Colors.white,
                        ),
                        const Gap(16),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
