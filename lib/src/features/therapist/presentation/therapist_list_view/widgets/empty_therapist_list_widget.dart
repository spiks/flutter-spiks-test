import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/src/core/core.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/bloc/bloc.dart';
import 'package:flutter_spiks_test/src/src.dart';
import 'package:flutter_spiks_test/src/values/illustration/illustrations.dart';

class EmptyTherapistListWidget extends StatelessWidget {
  const EmptyTherapistListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<FilterBloc, FilterState, bool>(
        selector: (state) => state.maybeWhen(
              orElse: () => false,
              filtersFetched: (filters) => filters.onlyMyTherapists,
              filterChanged: (_, filters, __) => filters.onlyMyTherapists,
            ),
        builder: (context, onlyMyTherapists) => _EmptyTherapistsWidget(
              illustration: onlyMyTherapists
                  ? Illustrations.user_octagon
                  : Illustrations.search_status,
              title: onlyMyTherapists
                  ? L10n.of(context).empty_my_therapists
                  : L10n.of(context).empty_therapists,
              detail: onlyMyTherapists
                  ? L10n.of(context).empty_my_therapists_description
                  : L10n.of(context).empty_therapists_description,
            ));
  }
}

class _EmptyTherapistsWidget extends StatelessWidget {
  const _EmptyTherapistsWidget({
    required this.illustration,
    required this.title,
    required this.detail,
  });

  final String illustration;
  final String title;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(illustration),
          Text(
            title,
            style: context.textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const Gap(16),
          Text(
            detail,
            style: context.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
