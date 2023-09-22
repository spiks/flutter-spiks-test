// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Замените!!! Полное имя создателя`
  String get full_name_creator {
    return Intl.message(
      'Замените!!! Полное имя создателя',
      name: 'full_name_creator',
      desc: '',
      args: [],
    );
  }

  /// `Перейти на главную страницу`
  String get btn_go_to_home_page {
    return Intl.message(
      'Перейти на главную страницу',
      name: 'btn_go_to_home_page',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка загрузки`
  String get load_failed {
    return Intl.message(
      'Ошибка загрузки',
      name: 'load_failed',
      desc: '',
      args: [],
    );
  }

  /// `Список врачей`
  String get therapist_list {
    return Intl.message(
      'Список врачей',
      name: 'therapist_list',
      desc: '',
      args: [],
    );
  }

  /// `Загрузка картинки`
  String get load_image {
    return Intl.message(
      'Загрузка картинки',
      name: 'load_image',
      desc: '',
      args: [],
    );
  }

  /// `Страница меню`
  String get home {
    return Intl.message(
      'Страница меню',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Настройки`
  String get setting {
    return Intl.message(
      'Настройки',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Русский`
  String get russian {
    return Intl.message(
      'Русский',
      name: 'russian',
      desc: '',
      args: [],
    );
  }

  /// `Темная тема`
  String get dark_mode {
    return Intl.message(
      'Темная тема',
      name: 'dark_mode',
      desc: '',
      args: [],
    );
  }

  /// `Успешно удалено`
  String get delete_success {
    return Intl.message(
      'Успешно удалено',
      name: 'delete_success',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка удаления`
  String get delete_failed {
    return Intl.message(
      'Ошибка удаления',
      name: 'delete_failed',
      desc: '',
      args: [],
    );
  }

  /// `Не поддерживается`
  String get didnt_supported {
    return Intl.message(
      'Не поддерживается',
      name: 'didnt_supported',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Подтвердить`
  String get confirmation {
    return Intl.message(
      'Подтвердить',
      name: 'confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Отмена`
  String get cancel {
    return Intl.message(
      'Отмена',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Да`
  String get yes {
    return Intl.message(
      'Да',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Нет`
  String get no {
    return Intl.message(
      'Нет',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Что-то произошло`
  String get e_smthWentWrong {
    return Intl.message(
      'Что-то произошло',
      name: 'e_smthWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Попробовать ещё раз`
  String get try_again {
    return Intl.message(
      'Попробовать ещё раз',
      name: 'try_again',
      desc: '',
      args: [],
    );
  }

  /// `Попробуйте обновить данные снова или обратиться в техническую поддержку.`
  String get try_again_description {
    return Intl.message(
      'Попробуйте обновить данные снова или обратиться в техническую поддержку.',
      name: 'try_again_description',
      desc: '',
      args: [],
    );
  }

  /// `Возникла ошибка`
  String get error_occurred {
    return Intl.message(
      'Возникла ошибка',
      name: 'error_occurred',
      desc: '',
      args: [],
    );
  }

  /// `Психологи`
  String get therapists {
    return Intl.message(
      'Психологи',
      name: 'therapists',
      desc: '',
      args: [],
    );
  }

  /// `В данный момент не удалось найти подходящего специалиста`
  String get empty_therapists {
    return Intl.message(
      'В данный момент не удалось найти подходящего специалиста',
      name: 'empty_therapists',
      desc: '',
      args: [],
    );
  }

  /// `Попробуйте снизить критерии \nили попробуйте позже`
  String get empty_therapists_description {
    return Intl.message(
      'Попробуйте снизить критерии \nили попробуйте позже',
      name: 'empty_therapists_description',
      desc: '',
      args: [],
    );
  }

  /// `У вас еще нет психологов`
  String get empty_my_therapists {
    return Intl.message(
      'У вас еще нет психологов',
      name: 'empty_my_therapists',
      desc: '',
      args: [],
    );
  }

  /// `Запишитесь на первую сессию, после этого психологи станут доступны в этом разделе`
  String get empty_my_therapists_description {
    return Intl.message(
      'Запишитесь на первую сессию, после этого психологи станут доступны в этом разделе',
      name: 'empty_my_therapists_description',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
