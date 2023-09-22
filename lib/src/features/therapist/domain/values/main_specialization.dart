enum MainSpecialization {
  acceptance_and_responsibility_therapy,
  art_therapy,
  body_oriented_therapy,
  client_centered_therapy,
  cognitive_behavioral_therapy,
  dbd,
  emdr,
  emotional_image_therapy,
  existential_analysis,
  existential_psychotherapy,
  gestalt_therapy,
  hypnosis,
  integrative_therapy,
  jungian_analysis,
  narrative_therapy,
  process_therapy,
  psychodrama,
  schema_therapy,
  symbolic_drama,
  systemic_family_therapy,
  transactional_analysis,
  psychoanalytic_therapy,
}

MainSpecialization? mainSpecializationFromString(
  String? apiMainSpecialization,
) {
  switch (apiMainSpecialization) {
    case 'acceptance_and_responsibility_therapy':
      return MainSpecialization.acceptance_and_responsibility_therapy;
    case 'art_therapy':
      return MainSpecialization.art_therapy;
    case 'body_oriented_therapy':
      return MainSpecialization.body_oriented_therapy;
    case 'client_centered_therapy':
      return MainSpecialization.client_centered_therapy;
    case 'cognitive_behavioral_therapy':
      return MainSpecialization.cognitive_behavioral_therapy;
    case 'dbd':
      return MainSpecialization.dbd;
    case 'emdr':
      return MainSpecialization.emdr;
    case 'psychoanalytic_therapy':
      return MainSpecialization.psychoanalytic_therapy;
    case 'emotional_image_therapy':
      return MainSpecialization.emotional_image_therapy;
    case 'existential_analysis':
      return MainSpecialization.existential_analysis;
    case 'existential_psychotherapy':
      return MainSpecialization.existential_psychotherapy;
    case 'gestalt_therapy':
      return MainSpecialization.gestalt_therapy;
    case 'hypnosis':
      return MainSpecialization.hypnosis;
    case 'integrative_therapy':
      return MainSpecialization.integrative_therapy;
    case 'jungian_analysis':
      return MainSpecialization.jungian_analysis;
    case 'narrative_therapy':
      return MainSpecialization.narrative_therapy;
    case 'process_therapy':
      return MainSpecialization.process_therapy;
    case 'psychodrama':
      return MainSpecialization.psychodrama;
    case 'schema_therapy':
      return MainSpecialization.schema_therapy;
    case 'symbolic_drama':
      return MainSpecialization.symbolic_drama;
    case 'systemic_family_therapy':
      return MainSpecialization.systemic_family_therapy;
    case 'transactional_analysis':
      return MainSpecialization.transactional_analysis;
    default:
      return null;
  }
}
