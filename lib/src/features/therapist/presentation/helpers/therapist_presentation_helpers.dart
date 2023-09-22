import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/models.dart';

import '../../../appointment/domain/bloc/appointment_select/appointment_select_bloc.dart';
import '../../../appointment/domain/values/appointment_type.dart';
import '../../../appointment/presentation/models/appointment_confirmation_model.dart';
import '../../domain/bloc/bloc.dart';
import '../../domain/values/main_specialization.dart';

class TherapistPresentationHelpers {
  static AppointmentConfirmationModel? configureAppointmentConfirmationModel(
    BuildContext context,
  ) {
    final therapist = context
        .read<TherapistDetailsBloc>()
        .state
        .maybeWhen(orElse: () => null, fetched: (details) => details);

    final dataRecord = context.read<AppointmentSelectBloc>().state.maybeWhen(
          orElse: () => null,
          showSlots: (_, selectedSlot, type, saved) =>
              (selectedSlot, type, saved),
        );
    if (therapist == null ||
        dataRecord == null ||
        !dataRecord.$3 ||
        dataRecord.$1 == null) {
      return null;
    }

    var discount = context
        .read<DiscountBloc>()
        .state
        .maybeWhen(orElse: () => null, fetched: (discount) => discount);

    if (discount != null && discount.isUsed) {
      discount = null;
    }
    return AppointmentConfirmationModel.fromTherapistId(
      appointmentType: dataRecord.$2,
      dateTime: dataRecord.$1!,
      price: getPrice(therapist.servicePricing, dataRecord.$2),
      name: therapist.name,
      surname: therapist.surname,
      therapistId: therapist.id,
      avatar: therapist.avatar,
      discountType: discount?.type,
      priceWithDiscount: discount != null
          ? (getPrice(therapist.servicePricing, dataRecord.$2) *
              (100 - discount.discountPercent) ~/
              100)
          : null,
      discountPercent: discount?.discountPercent,
      discountId: discount?.id,
    );
  }

  static int getPrice(ServicePricing pricing, AppointmentType appointmentType) {
    return appointmentType == AppointmentType.pair
        ? pricing.forPairSession!
        : pricing.forIndividualSession!;
  }

  static String localizeMainSpecialization(
      BuildContext context, MainSpecialization mainSpecialization) {
    switch (mainSpecialization) {
      case MainSpecialization.acceptance_and_responsibility_therapy:
        return L10n.of(context).mainSpecialization_acceptance_and_responsibility_therapy;
      case MainSpecialization.art_therapy:
        return L10n.of(context).mainSpecialization_art_therapy;
      case MainSpecialization.body_oriented_therapy:
        return L10n.of(context).mainSpecialization_body_oriented_therapy;
      case MainSpecialization.client_centered_therapy:
        return L10n.of(context).mainSpecialization_client_centered_therapy;
      case MainSpecialization.cognitive_behavioral_therapy:
        return L10n.of(context).mainSpecialization_cognitive_behavioral_therapy;
      case MainSpecialization.dbd:
        return L10n.of(context).mainSpecialization_dbd;
      case MainSpecialization.emdr:
        return L10n.of(context).mainSpecialization_emdr;
      case MainSpecialization.emotional_image_therapy:
        return L10n.of(context).mainSpecialization_emotional_image_therapy;
      case MainSpecialization.existential_analysis:
        return L10n.of(context).mainSpecialization_existential_analysis;
      case MainSpecialization.existential_psychotherapy:
        return L10n.of(context).mainSpecialization_existential_psychotherapy;
      case MainSpecialization.gestalt_therapy:
        return L10n.of(context).mainSpecialization_gestalt_therapy;
      case MainSpecialization.hypnosis:
        return L10n.of(context).mainSpecialization_hypnosis;
      case MainSpecialization.integrative_therapy:
        return L10n.of(context).mainSpecialization_integrative_therapy;
      case MainSpecialization.jungian_analysis:
        return L10n.of(context).mainSpecialization_jungian_analysis;
      case MainSpecialization.narrative_therapy:
        return L10n.of(context).mainSpecialization_narrative_therapy;
      case MainSpecialization.process_therapy:
        return L10n.of(context).mainSpecialization_process_therapy;
      case MainSpecialization.psychodrama:
        return L10n.of(context).mainSpecialization_psychodrama;
      case MainSpecialization.schema_therapy:
        return L10n.of(context).mainSpecialization_schema_therapy;
      case MainSpecialization.symbolic_drama:
        return L10n.of(context).mainSpecialization_symbolic_drama;
      case MainSpecialization.systemic_family_therapy:
        return L10n.of(context).mainSpecialization_systemic_family_therapy;
      case MainSpecialization.transactional_analysis:
        return L10n.of(context).mainSpecialization_transactional_analysis;
      case MainSpecialization.psychoanalytic_therapy:
        return L10n.of(context).mainSpecialization_psychoanalytic_therapy;
    }
  }
}
