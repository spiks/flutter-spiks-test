
import 'package:flutter_spiks_test/src/features/therapist/data/api/model/model.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/models.dart';

class ServicePricingMapper {
  static ServicePricing fromApi(ApiServicePricing api) {
    return ServicePricing(
      forIndividualSession: api.forIndividualSession,
      forPairSession: api.forPairSession,
    );
  }
}
