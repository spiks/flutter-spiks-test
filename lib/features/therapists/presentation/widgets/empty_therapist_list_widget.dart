import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spiks_test/core/themes/theme_class.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/widgets/gap/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class EmptyTherapistListWidget extends StatelessWidget {
  const EmptyTherapistListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        builder: (context, state) => _EmptyTherapistsWidget(
          illustration: 'assets/illustrations/search_status.svg',
          title: S.of(context).empty_therapists,
          detail: S.of(context).empty_therapists_description,
        ),);
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
          ),
        ],
      ),
    );
  }
}
