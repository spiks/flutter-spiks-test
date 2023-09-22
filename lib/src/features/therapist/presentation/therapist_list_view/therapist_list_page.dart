import 'package:auto_route/auto_route.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/src/core/core.dart';
import 'package:flutter_spiks_test/src/core/network/utils/updating/updating.dart';
import 'package:flutter_spiks_test/src/core/shared_widgets/scroll_views/paginated_list/paginated_sliver_list.dart';
import 'package:flutter_spiks_test/src/core/shared_widgets/scroll_views/paginated_list/pagination_listener.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/bloc/filter_bloc/filter_bloc.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/bloc/therapist_list_bloc/therapist_list_bloc.dart';
import 'package:flutter_spiks_test/src/features/therapist/internal/internal.dart';
import 'package:flutter_spiks_test/src/features/therapist/presentation/therapist_list_view/widgets/widgets.dart';

import 'package:flutter_spiks_test/src/values/illustration/illustrations.dart';

@RoutePage()
class TherapistListPage extends StatelessWidget {
  const TherapistListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TherapistListModule.makeTherapistListBloc(),
        ),
        BlocProvider(
          create: (context) => FilterModule.makeFilterBloc(),
        ),
        BlocProvider(
          create: (context) => DiscountModule.makeDiscountBloc(),
        ),
        BlocProvider(
          create: (context) => DiscountNotificationBlocModule.makeBloc(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<TherapistListBloc, TherapistListState>(
            listener: (context, state) => state.maybeWhen(
              orElse: () => null,
              fetched: (
                _,
                __,
                ___,
              ) {
                context
                    .read<DiscountBloc>()
                    .add(const DiscountEvent.fetchDiscounts());
                return;
              },
            ),
          ),
          BlocListener<FilterBloc, FilterState>(
            listener: (context, state) => state.when(
              filterChanged: (_, filters, status) =>
                  context.read<TherapistListBloc>().add(
                        TherapistListEvent.addFilter(filters: filters),
                      ),
              filtersFetched: (filters) => context.read<TherapistListBloc>()
                ..add(
                  TherapistListEvent.addFilter(filters: filters),
                )
                ..add(
                  const TherapistListEvent.applyFilter(),
                ),
              loading: () => null,
              error: (_) => null,
            ),
          ),
          BlocListener<DiscountNotificationBloc, DiscountNotificationState>(
            listener: (context, state) => state.maybeWhen(
              orElse: () => null,
              discountExpiresSoon: (discountId, expiresAt) {
                context.read<DiscountBloc>().add(
                      DiscountEvent.markDiscountAsViewed(
                        discountId: discountId,
                      ),
                    );

                /// delay to close discount hint
                Future.delayed(const Duration(milliseconds: 200)).then(
                  (value) => showDiscountTip(
                    context,
                    title: L10n.of(context).discount_expires_soon(
                      expiresAt.difference(DateTime.now()).inMinutes,
                    ),
                    subtitle: L10n.of(context).discount_expires_description,
                    image: Illustrations.discount_expires,
                    onPressed: () => context.router.pop(),
                  ),
                );
                return;
              },
            ),
          ),
        ],
        child: _TherapistListView(),
      ),
    );
  }
}

class _TherapistListView extends StatefulWidget {
  @override
  State<_TherapistListView> createState() => _TherapistListViewState();
}

class _TherapistListViewState extends State<_TherapistListView> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController(
      initialScrollOffset: 88,
      keepScrollOffset: false,
    );
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<FilterBloc, FilterState>(
        listener: (context, state) => state.maybeWhen(
          orElse: () => null,
          filtersFetched: (_) => _scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 400),
            curve: Curves.linear,
          ),
        ),
        builder: (context, state) => IgnorePointer(
          ignoring: state.maybeWhen(
            orElse: () => false,
            loading: () => true,
            error: (_) => false,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              NotificationListener(
                onNotification: (notification) {
                  if (_scrollController.position.activity
                      is IdleScrollActivity) {
                    scrollAnimation();
                  }
                  return true;
                },
                child: ExtendedNestedScrollView(
                  controller: _scrollController,
                  physics: const NeverScrollableScrollPhysics(),
                  headerSliverBuilder: (_, __) => [
                    SliverPersistentHeader(
                      delegate: HeaderDelegate(
                        MediaQuery.of(context).padding.top,
                      ),
                      pinned: true,
                    ),
                  ],
                  body: state.maybeWhen(
                    orElse: () =>
                        BlocBuilder<TherapistListBloc, TherapistListState>(
                      builder: (context, state) => state.when(
                        loading: () => const Center(
                          child: CupertinoActivityIndicator(),
                        ),
                        fetched: (list, status, _) => list.isEmpty
                            ? const EmptyTherapistListWidget()
                            : BlocSelector<DiscountBloc, DiscountState, int?>(
                                selector: (state) => state.maybeWhen(
                                  orElse: () => null,
                                  fetched: (discount) =>
                                      discount.discountPercent,
                                ),
                                builder: (context, discount) {
                                  return PaginationListener(
                                    paginationCallback: () => context
                                        .read<TherapistListBloc>()
                                        .add(const TherapistListEvent
                                            .fetchMore()),
                                    paginationStatus: status,
                                    child:
                                        PlatformSpecificSliverRefreshIndicator(
                                      onRefresh: () async {
                                        final bloc = context
                                            .read<TherapistListBloc>()
                                          ..add(const TherapistListEvent
                                              .update());
                                        await bloc.stream.firstWhere(
                                            (element) => element.maybeWhen(
                                                orElse: () => false,
                                                fetched: (_, __,
                                                        updateStatus) =>
                                                    updateStatus ==
                                                    UpdatingStatus.updated));
                                      },
                                      child: CustomScrollView(slivers: [
                                        PaginatedSliverList(
                                          paginationStatus: status,
                                          builder: (context, index) =>
                                              TherapistListItem(
                                            therapist: list[index],
                                            discount: discount,
                                          ),
                                          childCount: list.length,
                                          separatorBuilder:
                                              (BuildContext context,
                                                      int index) =>
                                                  const Divider(height: 0),
                                        ),
                                      ]),
                                    ),
                                  );
                                },
                              ),
                        error: (errorMessage) => TryAgainWidget(
                          onTryAgain: () => context
                              .read<TherapistListBloc>()
                              .add(const TherapistListEvent.fetch()),
                        ),
                      ),
                    ),
                    error: (errorMessage) => TryAgainWidget(
                      onTryAgain: () => context
                          .read<FilterBloc>()
                          .add(const FilterEvent.fetchInitialFilters()),
                    ),
                  ),
                ),
              ),
              BlocBuilder<DiscountBloc, DiscountState>(
                builder: (context, state) => state.maybeWhen(
                  orElse: () => const SizedBox.shrink(),
                  fetched: (discount) => discount.isViewed
                      ? const SizedBox.shrink()
                      : ElevatedDiscountTip(
                          title: L10n.of(context).first_appointment_discount(
                            discount.discountPercent,
                          ),
                          subtitle: L10n.of(context)
                              .first_appointment_discount_description,
                          image: Illustrations.discount_present,
                          onPressed: () {
                            context.read<DiscountBloc>().add(
                                  DiscountEvent.markDiscountAsViewed(
                                    discountId: discount.id,
                                  ),
                                );
                          },
                        ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> scrollAnimation() async {
    if (_scrollController.offset != 0 && _scrollController.offset <= 44) {
      await _scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 200),
        curve: Curves.fastOutSlowIn,
      );
    }
    if (_scrollController.offset < 88 && _scrollController.offset > 44) {
      await _scrollController.animateTo(
        88,
        duration: const Duration(milliseconds: 200),
        curve: Curves.fastOutSlowIn,
      );
    }
  }
}
