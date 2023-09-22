import 'package:flutter_spiks_test/src/features/therapist/data/api/model/model.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/models.dart';

class EmploymentMapper {
  static Employment fromApi(ApiEmployment api) {
    return Employment(
      years: api.years,
      companyName: api.companyName,
    );
  }

  static List<Employment> listFromApiList(List<ApiEmployment> apiList) {
    return apiList
        .map(
          (emp) => Employment(
            years: emp.years,
            companyName: emp.companyName,
          ),
        )
        .toList();
  }
}
