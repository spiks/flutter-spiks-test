import 'package:flutter/material.dart';

/// Сраница подробной карточки терапевта
/// @TODO реализовать
class TherapistDetailsPage extends StatelessWidget {

  const TherapistDetailsPage({ this.therapistId, super.key });
  final String? therapistId;


  @override
  Widget build(BuildContext context) {
    return Text('test $therapistId');
  }
}
