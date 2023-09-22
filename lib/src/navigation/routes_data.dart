class RoutesData {

  RoutesData._();

  static const String splashPage = '/';
  static const String authPage = '/auth';
  static const String pinOnboarding = '/pinOnboarding';
  static const String localAuthConfiguration = '/localAuthConfiguration';
  static const String main = '/main';
  static const String questionnaire = '/questionnaire';
  static const String localAuth = '/localAuth';
  static const String therapists = 'therapist';
  static const String therapistSearch = '/therapist/search';
  static const String therapist = '/therapist/details/:id';
  static const String blog = 'blog';
  static const String blogDetails = '/blog/details/:slug';
  static const String blogSearch = '/blog/search';
  static const String webView = '/webView';
  static const String therapistDetails = '/therapistDetails';

  static const String sessions = 'sessions';
  static const String chats = 'chats';
  static const String chat = '/chats/:id';
  static const String profile = 'profile';
  static const String videoCall = '/videoCall/:appointmentId';
}
