part of '../filter_modal_body.dart';

class _AgeSlider extends StatefulWidget {
  final Age initialAge;
  final Age currentAge;

  const _AgeSlider({
    required this.initialAge,
    required this.currentAge,
  });

  @override
  State<_AgeSlider> createState() => _AgeSliderState();
}

class _AgeSliderState extends State<_AgeSlider> {
  final TextEditingController minAgeController = TextEditingController();
  final TextEditingController maxAgeController = TextEditingController();
  int minAge = 18;
  int maxAge = 99;

  @override
  void initState() {
    minAge = widget.currentAge.from;
    maxAge = widget.currentAge.to;

    minAgeController.text = '$minAge';
    minAgeController.addListener(minAgeChanged);
    maxAgeController.text = '$maxAge';
    maxAgeController.addListener(maxAgeChanged);
    super.initState();
  }

  void minAgeChanged() {
    if (minAgeController.text.isEmpty) return;
    final newAge = int.parse(minAgeController.text);
    if (newAge < maxAge && newAge >= 18) {
      setState(() {
        minAge = newAge;
      });
    }
  }

  void maxAgeChanged() {
    if (maxAgeController.text.isEmpty) return;
    final newAge = int.parse(maxAgeController.text);
    if (newAge > minAge && newAge <= widget.initialAge.to) {
      setState(() {
        maxAge = newAge;
      });
    }
  }

  void changeAge(BuildContext context) {
    context.read<FilterBloc>().add(
          FilterEvent.changeAge(
            Age(
              from: minAge,
              to: maxAge,
            ),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _horizontalPadding,
      child: Column(
        children: [
          TitleWidget(
            title: L10n.of(context).therapist_age,
          ),
          const Gap(16),
          Row(
            children: [
              _RangeValueWidget(
                onComplete: () =>
                    minAgeController.text.isEmpty ? null : changeAge(context),
                controller: minAgeController,
              ),
              Expanded(
                child: RangeSlider(
                  activeColor: context.scheme.primary,
                  inactiveColor: context.scheme.surface,
                  min: widget.initialAge.from.toDouble(),
                  max: widget.initialAge.to.toDouble(),
                  values: RangeValues(
                    minAge.toDouble(),
                    maxAge.toDouble(),
                  ),
                  onChanged: (values) {
                    minAgeController.text = '${values.start.ceil()}';
                    maxAgeController.text = '${values.end.ceil()}';
                  },
                  onChangeEnd: (values) => context.read<FilterBloc>().add(
                        FilterEvent.changeAge(
                          Age(
                            from: values.start.ceil(),
                            to: values.end.ceil(),
                          ),
                        ),
                      ),
                ),
              ),
              _RangeValueWidget(
                onComplete: () =>
                    maxAgeController.text.isEmpty ? null : changeAge(context),
                controller: maxAgeController,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _RangeValueWidget extends StatelessWidget {
  final TextEditingController controller;
  final void Function() onComplete;

  const _RangeValueWidget({required this.controller, required this.onComplete});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        border: Border.all(color: context.scheme.surface),
      ),
      child: TextField(
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.number,
        controller: controller,
        onChanged: (_) => onComplete(),
        onEditingComplete: () {
          FocusManager.instance.primaryFocus?.unfocus();
          onComplete();
        },
        style: context.textTheme.labelMedium,
      ),
    );
  }
}
