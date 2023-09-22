import 'package:flutter_spiks_test/src/core/values/enum_values/enum_values.dart';

class TherapistFilterProblem {
  final String? groupName;
  final String id;
  final String name;
  final QuestionnaireType questionnaireType;

  TherapistFilterProblem(
      this.groupName, this.id, this.name, this.questionnaireType);
}
