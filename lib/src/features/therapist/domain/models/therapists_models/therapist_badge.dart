import 'package:flutter_spiks_test/src/core/models/media_image/media_image.dart';

class TherapistBadge {
  final MediaImage? avatar;
  final String id;
  final String name;
  final String surname;

  TherapistBadge(
      {this.avatar,
      required this.id,
      required this.name,
      required this.surname});
}
