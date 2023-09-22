import 'package:flutter/cupertino.dart';
import 'package:flutter_spiks_test/core/themes/theme_class.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/widgets/buttons/buttons.dart';
import 'package:flutter_spiks_test/widgets/gap/widgets/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TryAgainWidget extends StatelessWidget {
  const TryAgainWidget({
    required this.onTryAgain, super.key,
  });

  final void Function() onTryAgain;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/illustrations/try_again.svg'),
          Text(
            S.of(context).error_occurred,
            style: context.textTheme.displaySmall,
          ),
          const Gap(16),
          Text(
            S.of(context).try_again_description,
            style: context.textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          const Gap(32),
          ColoredButton(
            onPressed: onTryAgain,
            titleText: S.of(context).try_again,
            titleColor: context.scheme.onPrimary,
            buttonColor: context.scheme.primary,
          ),
        ],
      ),
    );
  }
}

class TryAgainListing extends StatelessWidget {
  const TryAgainListing({
    super.key,
    required this.onTryAgain,
  });

  final void Function() onTryAgain;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            S.of(context).error_occurred,
            style: context.textTheme.titleLarge,
          ),
          const Gap(8),
          Text(
            S.of(context).try_again_description,
            style: context.textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
          const Gap(16),
          SizedBox(
            height: 32,
            child: CupertinoButton(
              onPressed: onTryAgain,
              color: context.scheme.primary,
              disabledColor: context.scheme.primaryContainer,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                S.of(context).try_again,
                style: context.textTheme.bodySmall?.copyWith(
                  color: context.scheme.onPrimary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
