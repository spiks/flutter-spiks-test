import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/src/core/core.dart';
import 'package:flutter_spiks_test/src/features/appointment/domain/bloc/appointment_select/appointment_select_bloc.dart';
import 'package:flutter_spiks_test/src/features/appointment/domain/values/appointment_type.dart';
import 'package:flutter_spiks_test/src/features/discount/discount.dart';
import 'package:flutter_spiks_test/src/src.dart';

import '_empty_slots_placeholder.dart';

class SegmentController extends StatefulWidget {
  const SegmentController({
    super.key,
    this.priceForPersonal,
    this.priceForCouple,
    required this.initialType,
  });

  final num? priceForPersonal;
  final num? priceForCouple;
  final AppointmentType initialType;

  @override
  State<SegmentController> createState() => _SegmentControllerState();
}

class _SegmentControllerState extends State<SegmentController> {
  late AppointmentType? _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialType;
  }

  @override
  Widget build(BuildContext context) {
    final bool available =
        widget.priceForCouple != null && widget.priceForPersonal != null;
    final Color selected = context.scheme.onPrimary.withOpacity(.88);
    final Color unselected = context.scheme.tertiary;
    return available
        ? CustomSlidingSegmentedControl<AppointmentType>(
            alignment: Alignment.centerLeft,
            textStyle: context.primaryTextTheme.titleLarge!
                .copyWith(color: unselected),
            selectedTextStyle:
                context.primaryTextTheme.titleLarge!.copyWith(color: selected),
            backgroundColor: context.scheme.primary.withOpacity(.1),
            padding: EdgeInsets.zero,
            thumbColor: context.scheme.primary,
            onValueChanged: _registerValueChange,
            groupValue: _value,
            children: <AppointmentType, Widget>{
              AppointmentType.individual: _SegmentControllerItem(
                selected: _value == AppointmentType.individual,
                type: L10n.of(context).individual,
                price: widget.priceForPersonal,
              ),
              AppointmentType.pair: _SegmentControllerItem(
                selected: _value == AppointmentType.pair,
                type: L10n.of(context).forCouple.toLowerCase(),
                price: widget.priceForCouple,
              ),
            },
          )
        : _NotAvailableWidget(
            priceForPersonal: widget.priceForPersonal,
            priceForCouple: widget.priceForCouple,
          );
  }

  void _registerValueChange(AppointmentType? value) {
    setState(() {
      _value = value;
    });
    context.read<AppointmentSelectBloc>().add(
          AppointmentSelectEvent.changeAppointmentType(type: value!),
        );
  }
}

class _NotAvailableWidget extends StatelessWidget {
  const _NotAvailableWidget({
    required this.priceForPersonal,
    required this.priceForCouple,
  });

  final num? priceForPersonal;
  final num? priceForCouple;

  @override
  Widget build(BuildContext context) {
    final bool empty = priceForPersonal == null && priceForCouple == null;
    return empty
        ? const EmptySlotsPlaceholder()
        : Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: context.scheme.primary.withOpacity(.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: DefaultTextStyle(
              style: context.primaryTextTheme.titleLarge!
                  .copyWith(color: context.scheme.tertiary),
              child: _SegmentControllerItem(
                alignment: CrossAxisAlignment.center,
                selected: false,
                type: priceForPersonal != null
                    ? L10n.of(context).individual
                    : L10n.of(context).forCouple.toLowerCase(),
                price: priceForPersonal ?? priceForCouple,
              ),
            ),
          );
  }
}

class _SegmentControllerItem extends StatelessWidget {
  final bool selected;
  final num? price;
  final String type;
  final CrossAxisAlignment alignment;

  const _SegmentControllerItem({
    required this.selected,
    this.price,
    required this.type,
    this.alignment = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    final Color selectedColor = context.scheme.onPrimary.withOpacity(.88);
    final Color unselectedColor = context.scheme.tertiary;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: alignment,
        children: [
          BlocBuilder<DiscountBloc, DiscountState>(
            builder: (context, state) => state.maybeWhen(
              orElse: () => Text(
                price != null
                    ? L10n.of(context).pricePerHour(price!)
                    : L10n.of(context).unavailable,
              ),
              fetched: (discount) => Column(
                crossAxisAlignment: alignment,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        price != null
                            ? L10n.of(context).pricePerHour(price! * (100 - discount.discountPercent)~/100)
                            : L10n.of(context).unavailable,
                        style: context.textTheme.labelMedium?.copyWith(
                          color: selected ? selectedColor : unselectedColor,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Gap(4),
                      DiscountPercentWidget(
                        background: selected
                            ? context.scheme.primaryContainer.withOpacity(0.3)
                            : context.scheme.tertiaryContainer,
                        content: selected ? selectedColor : unselectedColor,
                        discount: discount.discountPercent,
                      ),
                    ],
                  ),
                  const Gap(2),
                  Text(
                    L10n.of(context).pricePerHour(price!),
                    style: context.textTheme.labelSmall?.copyWith(
                      color: selected
                          ? context.scheme.onPrimary.withOpacity(0.5)
                          : context.scheme.tertiary.withOpacity(0.5),
                      decorationColor: selected
                          ? context.scheme.onPrimary.withOpacity(0.5)
                          : context.scheme.tertiary.withOpacity(0.5),
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedDefaultTextStyle(
            style: context.primaryTextTheme.bodySmall!.copyWith(
              color: selected ? selectedColor : unselectedColor,
            ),
            duration: const Duration(
              milliseconds: 400,
            ),
            child: Text(
              type,
            ),
          ),
        ],
      ),
    );
  }
}
