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

  /// `REPLACE!!! Full name creator`
  String get full_name_creator {
    return Intl.message(
      'REPLACE!!! Full name creator',
      name: 'full_name_creator',
      desc: '',
      args: [],
    );
  }

  /// `go to home page`
  String get btn_go_to_home_page {
    return Intl.message(
      'go to home page',
      name: 'btn_go_to_home_page',
      desc: '',
      args: [],
    );
  }

  /// `Load failed`
  String get load_failed {
    return Intl.message(
      'Load failed',
      name: 'load_failed',
      desc: '',
      args: [],
    );
  }

  /// `Therapist list`
  String get therapist_list {
    return Intl.message(
      'Therapist list',
      name: 'therapist_list',
      desc: '',
      args: [],
    );
  }

  /// `Load image`
  String get load_image {
    return Intl.message(
      'Load image',
      name: 'load_image',
      desc: '',
      args: [],
    );
  }

  /// `Home menu`
  String get home {
    return Intl.message(
      'Home menu',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get setting {
    return Intl.message(
      'Setting',
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

  /// `Dark mode`
  String get dark_mode {
    return Intl.message(
      'Dark mode',
      name: 'dark_mode',
      desc: '',
      args: [],
    );
  }

  /// `Delete success`
  String get delete_success {
    return Intl.message(
      'Delete success',
      name: 'delete_success',
      desc: '',
      args: [],
    );
  }

  /// `Delete failed`
  String get delete_failed {
    return Intl.message(
      'Delete failed',
      name: 'delete_failed',
      desc: '',
      args: [],
    );
  }

  /// `Didn't support`
  String get didnt_supported {
    return Intl.message(
      'Didn\'t support',
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

  /// `Confirm`
  String get confirmation {
    return Intl.message(
      'Confirm',
      name: 'confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
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

  /// `Something went wrong`
  String get e_smthWentWrong {
    return Intl.message(
      'Something went wrong',
      name: 'e_smthWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get try_again {
    return Intl.message(
      'Try again',
      name: 'try_again',
      desc: '',
      args: [],
    );
  }

  /// `Try update data again or contact technical support.`
  String get try_again_description {
    return Intl.message(
      'Try update data again or contact technical support.',
      name: 'try_again_description',
      desc: '',
      args: [],
    );
  }

  /// `Error occurred`
  String get error_occurred {
    return Intl.message(
      'Error occurred',
      name: 'error_occurred',
      desc: '',
      args: [],
    );
  }

  /// `Therapists`
  String get therapists {
    return Intl.message(
      'Therapists',
      name: 'therapists',
      desc: '',
      args: [],
    );
  }

  /// `Unable to find a suitable therapist at the moment`
  String get empty_therapists {
    return Intl.message(
      'Unable to find a suitable therapist at the moment',
      name: 'empty_therapists',
      desc: '',
      args: [],
    );
  }

  /// `Try lower criteria \nor try again later`
  String get empty_therapists_description {
    return Intl.message(
      'Try lower criteria \nor try again later',
      name: 'empty_therapists_description',
      desc: '',
      args: [],
    );
  }

  /// `You don't have any psychologists yet`
  String get empty_my_therapists {
    return Intl.message(
      'You don\'t have any psychologists yet',
      name: 'empty_my_therapists',
      desc: '',
      args: [],
    );
  }

  /// `Sign up for the first session, after that psychologists will be available in this section`
  String get empty_my_therapists_description {
    return Intl.message(
      'Sign up for the first session, after that psychologists will be available in this section',
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
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
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
