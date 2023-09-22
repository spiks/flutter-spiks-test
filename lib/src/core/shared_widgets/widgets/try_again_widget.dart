import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertspsks_tistest/generated/l10n.dart';
import 'package:fluttertspsks_tistest/src/core/core.dart';
import 'package:fluttertspsks_tistest/src/src.dart';
import 'package:fluttertspsks_tistest/src/values/illustration/illustrations.dart';

class TryAgainWidget extends StatelessWidget {
  const TryAgainWidget({
    super.key,
    required this.onTryAgain,
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
          SvgPicture.asset(Illustrations.try_again),
          Text(
            L10n.of(context).error_occurred,
            style: context.textTheme.displaySmall,
          ),
          const Gap(16),
          Text(
            L10n.of(context).try_again_description,
            style: context.textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          const Gap(32),
          ColoredButton(
            onPressed: onTryAgain,
            titleText: L10n.of(context).try_again,
            titleColor: context.scheme.onPrimary,
            buttonColor: context.scheme.primary,
          ),
          const Gap(24),
          const SupportButton(),
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
            L10n.of(context).error_occurred,
            style: context.textTheme.titleLarge,
          ),
          const Gap(8),
          Text(
            L10n.of(context).try_again_description,
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
                L10n.of(context).try_again,
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
