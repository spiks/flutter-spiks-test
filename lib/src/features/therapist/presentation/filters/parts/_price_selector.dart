part of '../filter_modal_body.dart';

class _PriceSelector extends StatelessWidget {
  final List<TherapistPriceOptions>? prices;

  _PriceSelector({required this.prices});

  final List<(TherapistPriceOptions, String Function(BuildContext context))>
      _priceOptions = [
    (
      TherapistPriceOptions.until_2500,
      (context) => L10n.of(context).toPrice(2500)
    ),
    (
      TherapistPriceOptions.from_2500_to_3500,
      (context) => L10n.of(context).fromPriceToPriceAnother(2500, 3500)
    ),
    (
      TherapistPriceOptions.from_3500_to_5000,
      (context) => L10n.of(context).fromPriceToPriceAnother(3500, 5000)
    ),
    (
      TherapistPriceOptions.from_5000,
      (context) => L10n.of(context).fromPrice(5000)
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: _horizontalPadding,
          child: TitleWidget(
            title: L10n.of(context).session_price,
            itemCount: prices?.length ?? 0,
          ),
        ),
        const Gap(16),
        SizedBox(
          height: 40,
          child: GradientBordersWrapper(
            color: context.scheme.background,
            child: ListView.separated(
              padding: _horizontalPadding,
              scrollDirection: Axis.horizontal,
              itemCount: _priceOptions.length,
              itemBuilder: (context, index) => SelectableItem(
                  title: _priceOptions[index].$2.call(context),
                  selected: prices?.contains(
                        _priceOptions[index].$1,
                      ) ??
                      false,
                  onTap: (selected) => context.read<FilterBloc>().add(
                        FilterEvent.changePrice(
                          _priceOptions[index].$1,
                        ),
                      ),
                ),
              separatorBuilder: (BuildContext context, int index) =>
                  const Gap(8),
            ),
          ),
        ),
      ],
    );
  }
}
