part of '../filter_modal_body.dart';

class _QuestionnaireTypeSelector extends StatelessWidget {
  final QuestionnaireType questionnaireType;

  const _QuestionnaireTypeSelector({required this.questionnaireType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _horizontalPadding,
      child: Column(
        children: [
          TitleWidget(
            title: L10n.of(context).session_type,
            itemCount: questionnaireType == QuestionnaireType.all ? 0 : 1,
          ),
          const Gap(16),
          Row(
            children: [
              SelectableItem(
                title: L10n.of(context).individual.capitalize(0),
                selected: questionnaireType == QuestionnaireType.myself,
                onTap: (_) => context.read<FilterBloc>().add(
                      const FilterEvent.changeQuestionnaireType(
                        QuestionnaireType.myself,
                      ),
                    ),
              ),
              const Gap(8),
              SelectableItem(
                title: L10n.of(context).forPair.capitalize(0),
                selected: questionnaireType == QuestionnaireType.me_and_partner,
                onTap: (_) => context.read<FilterBloc>().add(
                      const FilterEvent.changeQuestionnaireType(
                        QuestionnaireType.me_and_partner,
                      ),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
