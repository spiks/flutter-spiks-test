class AppConfig {
  static String baseUrl = '';

  static const String defaultLocale = 'ru';

  static void configDev() {
    baseUrl = 'https://dog.ceo/api';
  }

  static void configTest() {
    // TODO(boilerplate): flavoring
  }

  static void configProduction() {
    // TODO(boilerplate): flavoring
  }
}
