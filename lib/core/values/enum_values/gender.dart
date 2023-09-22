enum Gender {
  female,
  male,
  other,
}

Gender? genderFromString(String? gender) {
  switch (gender) {
    case 'male':
      return Gender.male;
    case 'female':
      return Gender.female;
    case 'other':
      return Gender.other;
    default:
      return null;
  }
}
