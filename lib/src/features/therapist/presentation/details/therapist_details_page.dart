import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/src/core/core.dart';
import 'package:flutter_spiks_test/src/features/appointment/domain/bloc/appointment_select/appointment_select_bloc.dart';
import 'package:flutter_spiks_test/src/features/appointment/domain/values/appointment_type.dart';
import 'package:flutter_spiks_test/src/features/appointment/internal/bloc_modules/appointment_module.dart';
import 'package:flutter_spiks_test/src/features/discount/discount.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/bloc/therapist_details_bloc/therapist_details_bloc.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/models.dart';
import 'package:flutter_spiks_test/src/features/therapist/internal/bloc_modules/therapis_details_module.dart';
import 'package:flutter_spiks_test/src/features/therapist/presentation/details/parts/parts.dart';
import 'package:flutter_spiks_test/src/src.dart';
import 'package:flutter_spiks_test/src/values/icons/outline_icons.dart';
import 'package:flutter_spiks_test/src/values/icons/solid_icons.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../navigation/navigation.dart';
import '../../../appointment/presentation/view/appointment_confirmation/view/appointment_confirmation_modal.dart';
import '../../../appointment/presentation/view/appointment_modals/appointment_error.dart';
import '../../../appointment/presentation/view/appointment_modals/appointment_success.dart';
import '../../../appointment/presentation/view/appointment_select/appointment_select_modal.dart';
import '../helpers/therapist_presentation_helpers.dart';
import 'parts/_problems_titles.dart';

@RoutePage()
class TherapistDetailsPage extends StatelessWidget {
  const TherapistDetailsPage({super.key, @PathParam('id') required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TherapistDetailsBloc>(
          create: (_) => TherapistDetailsModule.makeTherapistDetailsBloc()
            ..add(
              TherapistDetailsEvent.fetch(id),
            ),
        ),
        BlocProvider(
          create: (_) => AppointmentModule.makeAppointmentSelectBloc(),
        ),
        BlocProvider(
          create: (_) => DiscountModule.makeDiscountBloc(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AppointmentSelectBloc, AppointmentSelectState>(
            listener: (context, state) => state.maybeWhen(
              orElse: () => null,
              showSlots: (_, selectedSlot, type, saved) =>
                  _showAppointmentConfirmation(
                context,
              ),
            ),
          ),
          BlocListener<TherapistDetailsBloc, TherapistDetailsState>(
            listener: (context, state) => state.maybeWhen(
              orElse: () => null,
              fetched: (therapist) {
                context.read<AppointmentSelectBloc>().add(
                      AppointmentSelectEvent.fetchSlotsByTherapistId(
                        therapistId: therapist.id,
                      ),
                    );
                _setInitialType(context, therapist.servicePricing);
                return null;
              },
            ),
          ),
        ],
        child: TherapistDetailsView(id: id),
      ),
    );
  }
}

void _setInitialType(BuildContext context, ServicePricing servicePricing) {
  final initialType = servicePricing.forIndividualSession != null
      ? AppointmentType.individual
      : servicePricing.forPairSession != null
          ? AppointmentType.pair
          : AppointmentType.individual;
  context.read<AppointmentSelectBloc>().add(
        AppointmentSelectEvent.changeAppointmentType(
          type: initialType,
        ),
      );
}

void _showAppointmentConfirmation(
  BuildContext context,
) {
  final model =
      TherapistPresentationHelpers.configureAppointmentConfirmationModel(
    context,
  );
  if (model == null) {
    return;
  }
  showAppointmentConfirmation(
    context,
    onError: (error) {
      log('$error from therapist', name: 'THERAPIST');
      showAppointmentErrorModal(
        context,
        onRetryTap: () {
          _showAppointmentConfirmation(
            context,
          );
        },
      );
    },
    onSuccess: () {
      context.router.popUntilRouteWithPath(RoutesData.therapistDetails);
      showAppointmentSuccessInfo(
        context,
        startsAt: model.dateTime.startsAt,
        price: model.priceWithDiscount ?? model.price,
      );
      context.read<DiscountBloc>().add(const DiscountEvent.fetchDiscounts());
      context.read<AppointmentSelectBloc>().add(
            AppointmentSelectEvent.fetchSlotsByTherapistId(
              therapistId: model.therapistId!,
            ),
          );
    },
    model: model,
  );
}

class TherapistDetailsView extends StatefulWidget {
  const TherapistDetailsView({super.key, required this.id});

  final String id;

  @override
  State<TherapistDetailsView> createState() => _TherapistDetailsViewState();
}

class _TherapistDetailsViewState extends State<TherapistDetailsView> {
  late final DraggableScrollableController _controller;

  @override
  void initState() {
    _controller = DraggableScrollableController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: TherapistAppBar(
        controller: _controller,
      ),
      backgroundColor: context.scheme.inverseSurface,
      body: Stack(
        children: [
          BlocBuilder<TherapistDetailsBloc, TherapistDetailsState>(
            builder: (context, state) => state.when(
              loading: () => const Center(child: CupertinoActivityIndicator()),
              fetched: (therapist) => Stack(
                children: [
                  _AnimatedAvatar(
                    avatar: therapist.avatar,
                  ),
                  _AnimatedBody(
                    controller: _controller,
                    therapist: therapist,
                  ),
                  if (therapist.servicePricing.forIndividualSession != null ||
                      therapist.servicePricing.forPairSession != null)
                    BlocBuilder<AppointmentSelectBloc, AppointmentSelectState>(
                      builder: (context, state) => state.maybeWhen(
                        orElse: () => const SizedBox.shrink(),
                        showSlots: (_, selectedSlot, type, saved) =>
                            _AnimatedAppointmentBottomSheet(
                          id: therapist.id,
                        ),
                      ),
                    ),
                ],
              ),
              error: (error) => TryAgainWidget(
                onTryAgain: () => context.read<TherapistDetailsBloc>().add(
                      TherapistDetailsEvent.fetch(widget.id),
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const double _photoHeightFactor = 0.625;

class _AnimatedAppointmentBottomSheet extends StatefulWidget {
  final String id;

  const _AnimatedAppointmentBottomSheet({required this.id});

  @override
  State<_AnimatedAppointmentBottomSheet> createState() =>
      _AnimatedAppointmentBottomSheetState();
}

class _AnimatedAppointmentBottomSheetState
    extends State<_AnimatedAppointmentBottomSheet>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  late final Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    animation = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
        .animate(
            CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn));

    Future.delayed(
        const Duration(milliseconds: 300), () => controller.forward());
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SlideTransition(
        position: animation,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: GradientResources.primary2,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(
                40,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: BlocSelector<AppointmentSelectBloc, AppointmentSelectState,
                bool>(
              selector: (state) => state.maybeWhen(
                orElse: () => true,
                showSlots: (slots, _, __, ___) => slots.isEmpty,
              ),
              builder: (context, emptySlots) => emptySlots
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          L10n.of(context).empty_slots_error,
                          style: context.textTheme.titleLarge
                              ?.copyWith(color: context.scheme.onPrimary),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          L10n.of(context).empty_slots_description,
                          style: context.textTheme.bodySmall
                              ?.copyWith(color: context.scheme.onPrimary),
                          textAlign: TextAlign.center,
                        )
                      ],
                    )
                  : Row(
                      children: [
                        OutlinedButton(
                          onPressed: () => wrappedModalBottomSheet(
                            context,
                            child: BlocProvider.value(
                              value: context.read<AppointmentSelectBloc>(),
                              child: AppointmentSelectModal(
                                buttonTitle: L10n.of(context).save,
                              ),
                            ),
                          ),
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 16,
                              ),
                            ),
                            side: MaterialStateProperty.all<BorderSide>(
                              BorderSide(
                                color: context.scheme.background,
                              ),
                            ),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                OutlineIcons.calendar,
                                size: 24,
                                color: context.scheme.background,
                              ),
                              const SizedBox(width: 8),
                              BlocSelector<AppointmentSelectBloc,
                                  AppointmentSelectState, String>(
                                selector: (state) => state.maybeWhen(
                                  orElse: () => L10n.of(context).selectDate,
                                  showSlots: (_, selectedSlot, __, saved) =>
                                      saved
                                          ? DateFormat('dd.MM, HH:mm').format(
                                              selectedSlot!.startsAt,
                                            )
                                          : L10n.of(context).selectDate,
                                ),
                                builder: (context, title) => Text(
                                  title,
                                  style: context.primaryTextTheme.bodySmall,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: BlocSelector<AppointmentSelectBloc,
                              AppointmentSelectState, bool>(
                            selector: (state) => state.maybeWhen(
                              orElse: () => false,
                              showSlots: (_, __, ___, saved) => saved,
                            ),
                            builder: (context, buttonAvailable) =>
                                ColoredButton(
                              titleText: L10n.of(context).enroll,
                              titleColor: context.scheme.primary,
                              buttonColor: context.scheme.background,
                              borderRadius: 32,
                              onPressed: buttonAvailable
                                  ? () => _showAppointmentConfirmation(
                                        context,
                                      )
                                  : null,
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}

class _AnimatedAvatar extends StatefulWidget {
  const _AnimatedAvatar({required this.avatar});

  final String? avatar;

  @override
  State<_AnimatedAvatar> createState() => _AnimatedAvatarState();
}

class _AnimatedAvatarState extends State<_AnimatedAvatar>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  final Duration _duration = const Duration(milliseconds: 350);
  late final Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: _duration,
    );
    _animation = Tween(begin: const Offset(0, -1), end: Offset.zero).animate(
      CurvedAnimation(parent: _controller, curve: Curves.decelerate),
    );
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: SlideTransition(
        position: _animation,
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(
              40,
            ),
          ),
          child: FractionallySizedBox(
            heightFactor: _photoHeightFactor,
            widthFactor: 1,
            child: ColoredBox(
              color: ColorRefs.primary[80] ?? Colors.blue,
              child: (widget.avatar != null)
                  ? CachedNetworkImage(
                      imageUrl: 'https://${widget.avatar}',
                      fit: BoxFit.fitHeight,
                      errorWidget: (context, url, error) => Icon(
                        SolidIcons.user,
                        size: 220,
                        color: ColorRefs.neutral[100] ?? Colors.white,
                      ),
                      progressIndicatorBuilder: (
                        context,
                        url,
                        progress,
                      ) =>
                          const CupertinoActivityIndicator(),
                    )
                  : Icon(
                      SolidIcons.user,
                      size: 220,
                      color: ColorRefs.neutral[100] ?? Colors.white,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}

class _AnimatedBody extends StatefulWidget {
  const _AnimatedBody({required this.therapist, required this.controller});

  final TherapistDetail therapist;
  final DraggableScrollableController controller;

  @override
  State<_AnimatedBody> createState() => _AnimatedBodyState();
}

class _AnimatedBodyState extends State<_AnimatedBody>
    with SingleTickerProviderStateMixin {
  final double _size = 1 - _photoHeightFactor - 0.02;
  late final AnimationController _controller;
  final Duration _duration = const Duration(milliseconds: 350);
  final Tween<Offset> _tween =
      Tween(begin: const Offset(0, 1), end: Offset.zero);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: _duration);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: SlideTransition(
        position: _tween.animate(
          CurvedAnimation(
            parent: _controller,
            curve: Curves.decelerate,
          ),
        ),
        child: DraggableScrollableSheet(
          snap: true,
          snapAnimationDuration: const Duration(
            milliseconds: 100,
          ),
          controller: widget.controller,
          minChildSize: _size,
          initialChildSize: _size,
          builder: (context, scrollController) => _Body(
            scrollController: scrollController,
            therapist: widget.therapist,
          ),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.scrollController,
    required this.therapist,
  });

  final ScrollController scrollController;
  final TherapistDetail therapist;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.scheme.background,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(
            40,
          ),
        ),
      ),
      child: ListView(
        padding: const EdgeInsets.only(top: 44, bottom: 130),
        controller: scrollController,
        children: [
          Header(
            title: Text(
              '${therapist.surname} ${therapist.name}',
              style: context.textTheme.displayMedium,
              textAlign: TextAlign.center,
            ),
            description: (therapist.mainSpecialization != null)
                ? Text(
                    TherapistPresentationHelpers.localizeMainSpecialization(
                      context,
                      therapist.mainSpecialization!,
                    ),
                    style: context.textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  )
                : const SizedBox.shrink(),
            children: [
              WorkExperienceWidget(
                experience: therapist.experience,
                gradient: GradientResources.accent1,
                iconSize: 24,
                textStyle: context.textTheme.titleMedium,
              ),
              Gap(24),
              Align(
                  alignment: Alignment.centerLeft,
                  child: ProblemsTitles(
                    titles: therapist.problemsTitles,
                  ))
            ],
          ),
          // if (therapist.problemsByTypes.isNotEmpty)
          //   Tags(
          //     tags: getTags(),
          //   ),
          BlocBuilder<AppointmentSelectBloc, AppointmentSelectState>(
            builder: (context, state) => state.maybeWhen(
              orElse: () => Shimmer.fromColors(
                baseColor: context.scheme.tertiaryContainer,
                highlightColor: context.scheme.onPrimary,
                child: Container(
                  height: 72,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                ),
              ),
              showSlots: (_, __, type, ___) => SegmentController(
                priceForPersonal: therapist.servicePricing.forIndividualSession,
                priceForCouple: therapist.servicePricing.forPairSession,
                initialType: type,
              ),
            ),
          ),
          if (therapist.biography != null)
            BlockWithTitle(
              title: Text(
                L10n.of(context).bio,
                style: context.textTheme.titleLarge,
              ),
              gap: 8,
              children: [
                Text(
                  therapist.biography!,
                  style: context.textTheme.bodyMedium,
                ),
              ],
            ),
          if (therapist.higherEducation.isNotEmpty)
            ExpandableBlockWithTitle(
              title: Text(
                L10n.of(context).education,
                style: context.textTheme.titleLarge,
              ),
              children: therapist.higherEducation
                  .map<Widget>(
                    (e) => Container(
                      width: MediaQuery.of(context).size.width - 64,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16),
                        ),
                        border: Border.all(
                          color: context.scheme.outlineVariant,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${e.educationalInstitution} | ${e.graduationYear}',
                            style: context.textTheme.titleMedium,
                          ),
                          const Gap(8),
                          Text(
                            e.speciality,
                            style: context.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  )
                  .separate(const Gap(10))
                  .toList(),
            ),
          if (therapist.workPrinciples != null &&
              therapist.workPrinciples!.isNotEmpty)
            ExpandableBlockWithTitle(
              title: Text(
                L10n.of(context).principleOfOperation,
                style: context.textTheme.titleLarge,
              ),
              children: [
                Text(
                  therapist.workPrinciples!,
                  style: context.textTheme.bodyMedium,
                ),
              ],
            ),
        ]
            .map<Widget>(
              (element) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                ),
                child: element,
              ),
            )
            .separate(
              const SizedBox(height: 32),
            )
            .toList(),
      ),
    );
  }

// List<String> getTags() {
//   final List<String> tags = [];
//   for (final specialization in therapist.problemsByTypes) {
//     for (final tag in specialization.items) {
//       tags.add(tag.name);
//     }
//   }
//   return tags;
// }
}
