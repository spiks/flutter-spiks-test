import 'package:flutter_spiks_test/src/features/therapist/data/api/model/therapist_models/api_therapist_badge/api_therapist_badge.dart';

import '../../../../../../core/models/media_image/api/mapper/media_image_mapper.dart';
import '../../../../domain/models/therapists_models/therapist_badge.dart';

class TherapistBadgeMapper {
  static TherapistBadge? fromApi(ApiTherapistBadge? api) {
    if (api == null) {
      return null;
    }
    return TherapistBadge(
      avatar: MediaImageMapper.fromApi(api.avatar),
      id: api.id,
      name: api.name,
      surname: api.surname,
    );
  }
}
