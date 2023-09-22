import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/src/core/shared_widgets/gap/gap.dart';
import 'package:flutter_spiks_test/src/core/shared_widgets/segment_control/custom_segment_control.dart';
import 'package:flutter_spiks_test/src/core/shared_widgets/wrappers/modal_bottom_sheet_wrapper.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/bloc/filter_bloc/filter_bloc.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/bloc/therapist_list_bloc/therapist_list_bloc.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/domain.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/values/filter_status.dart';
import 'package:flutter_spiks_test/src/features/therapist/presentation/filters/filter_modal_body.dart';
import 'package:flutter_spiks_test/src/navigation/navigation.dart';
import 'package:flutter_spiks_test/src/src.dart';
import 'package:flutter_spiks_test/src/values/icons/outline_icons.dart';

class HeaderDelegate extends SliverPersistentHeaderDelegate {
  const HeaderDelegate(this.statusBarHeight);

  final double statusBarHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final progress =
        math.min(1, shrinkOffset / (maxExtent - minExtent)).toDouble();
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 24,
        right: 24,
      ),
      decoration: BoxDecoration(
        border: progress == 1
            ? Border(
                bottom:
                    BorderSide(color: context.scheme.tertiary.withOpacity(0.2)))
            : null,
        color: ColorTween(
          begin: context.scheme.primary,
          end: context.scheme.background,
        ).lerp(progress),
        borderRadius: progress == 1
            ? null
            : const BorderRadius.vertical(
                bottom: Radius.circular(48),
              ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: OnlyMyTherapistFilterSwitcher(
              progress: progress,
            ),
          ),
          Container(
            height: 71,
            alignment: Alignment.center,
            child: Row(
              children: [
                Text(
                  L10n.of(context).therapists,
                  style: context.textTheme.headlineMedium?.copyWith(
                    color: ColorTween(begin: Colors.white, end: Colors.black)
                        .lerp(progress),
                  ),
                ),
                const Spacer(),
                _HeaderButton(
                  progress: progress,
                  icon: OutlineIcons.search,
                  onTap: () =>
                      context.router.push(const TherapistSearchRoute()),
                  heroTag: 'search_tag',
                ),
                const Gap(16),
                BlocSelector<FilterBloc, FilterState, bool>(
                  selector: (state) => state.maybeWhen(
                    orElse: () => false,
                    filtersFetched: (_) => true,
                    filterChanged: (_, __, ___) => true,
                  ),
                  builder: (context, fetched) {
                    return HeaderIconButtonWithBadge(
                      progress: progress,
                      showBadge: true,
                      icon: OutlineIcons.settings,
                      onTap: () => fetched
                          ? wrappedModalBottomSheet(
                              context,
                              child: MultiBlocProvider(
                                providers: [
                                  BlocProvider.value(
                                    value: context.read<FilterBloc>(),
                                  ),
                                  BlocProvider.value(
                                    value: context.read<TherapistListBloc>(),
                                  ),
                                ],
                                child: FilterModalBody(),
                              ),
                            )
                          : null,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 160 + statusBarHeight;

  @override
  double get minExtent => 72 + statusBarHeight;

  @override
  bool shouldRebuild(
    covariant SliverPersistentHeaderDelegate oldDelegate,
  ) =>
      true;
}

class HeaderIconButtonWithBadge extends StatelessWidget {
  final double progress;
  final IconData icon;
  final VoidCallback onTap;
  final bool showBadge;
  final String? heroTag;

  const HeaderIconButtonWithBadge({
    super.key,
    required this.progress,
    required this.icon,
    required this.onTap,
    this.showBadge = false,
    this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 32,
      child: Stack(
        children: [
          _HeaderButton(
            progress: progress,
            heroTag: heroTag,
            onTap: onTap,
            icon: icon,
          ),
          if (showBadge)
            BlocSelector<FilterBloc, FilterState, bool>(
              selector: (state) => state.maybeWhen(
                orElse: () => false,
                filterChanged: (_, __, status) =>
                    status == FilterStatus.applied,
              ),
              builder: (context, applied) {
                return Positioned(
                  top: 0,
                  right: 0,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: applied ? 16 : 0,
                    width: applied ? 16 : 0,
                    decoration: BoxDecoration(
                      color: context.accent?.sourceAccent ?? Colors.pinkAccent,
                      shape: BoxShape.circle,
                    ),
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}

class _HeaderButton extends StatelessWidget {
  const _HeaderButton({
    required this.progress,
    required this.icon,
    required this.onTap,
    this.heroTag,
  });

  final double progress;
  final IconData icon;
  final VoidCallback onTap;
  final String? heroTag;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag ?? '_',
      child: SizedBox.square(
        dimension: 32,
        child: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: onTap,
          child: Icon(
            icon,
            size: 32,
            color: ColorTween(
              begin: context.scheme.background,
              end: context.scheme.primary,
            ).lerp(progress),
          ),
        ),
      ),
    );
  }
}

class OnlyMyTherapistFilterSwitcher extends StatelessWidget {
  const OnlyMyTherapistFilterSwitcher({super.key, required this.progress});

  final double progress;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 1 - progress,
      child: BlocBuilder<FilterBloc, FilterState>(
        builder: (context, state) => state.maybeWhen(
          orElse: () => _Switcher.disabled(),
          filtersFetched: (filters) =>
              _Switcher(onlyMyTherapists: filters.onlyMyTherapists),
          filterChanged: (_, filters, __) =>
              _Switcher(onlyMyTherapists: filters.onlyMyTherapists),
        ),
      ),
    );
  }
}

class _Switcher extends StatelessWidget {
  const _Switcher({required this.onlyMyTherapists, this.available = true});

  final bool onlyMyTherapists;
  final bool available;

  factory _Switcher.disabled() => const _Switcher(
        onlyMyTherapists: false,
        available: false,
      );

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !available,
      child: AnimatedOpacity(
        opacity: available ? 1 : .5,
        duration: const Duration(milliseconds: 300),
        child: Container(
          height: 48,
          width: double.infinity,
          margin: const EdgeInsets.only(bottom: 24),
          child: CustomSlidingSegmentedControl<bool>(
            children: {
              false: SizedBox(
                height: 40,
                child: Center(
                  child: Text(
                    L10n.of(context).all,
                  ),
                ),
              ),
              true: SizedBox(
                height: 40,
                child: Center(
                  child: Text(
                    L10n.of(context).mine,
                  ),
                ),
              ),
            },
            onValueChanged: (val) => val != null
                ? context.read<FilterBloc>().add(
                    FilterEvent.changeOnlyMyTherapist(onlyMyTherapists: val))
                : {},
            textStyle: context.textTheme.labelLarge!
                .copyWith(color: context.scheme.background),
            selectedTextStyle: context.textTheme.labelLarge!.copyWith(
              color: context.scheme.primary,
            ),
            indicatorRadius: 12,
            padding: const EdgeInsets.all(4),
            thumbColor: context.scheme.background,
            backgroundColor: ColorRefs.primary[60] ?? Colors.blue,
            groupValue: onlyMyTherapists,
          ),
        ),
      ),
    );
  }
}
