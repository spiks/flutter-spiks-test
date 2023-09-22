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

class L10n {
  L10n();

  static L10n? _current;

  static L10n get current {
    assert(_current != null,
        'No instance of L10n was loaded. Try to initialize the L10n delegate before accessing L10n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<L10n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = L10n();
      L10n._current = instance;

      return instance;
    });
  }

  static L10n of(BuildContext context) {
    final instance = L10n.maybeOf(context);
    assert(instance != null,
        'No instance of L10n present in the widget tree. Did you add L10n.delegate in localizationsDelegates?');
    return instance!;
  }

  static L10n? maybeOf(BuildContext context) {
    return Localizations.of<L10n>(context, L10n);
  }

  /// `Введите код`
  String get inputCode {
    return Intl.message(
      'Введите код',
      name: 'inputCode',
      desc: '',
      args: [],
    );
  }

  /// `Коды не совпадают`
  String get e_nonMatchingCodes {
    return Intl.message(
      'Коды не совпадают',
      name: 'e_nonMatchingCodes',
      desc: '',
      args: [],
    );
  }

  /// `Количество запросов превышено. Попробуйте позже`
  String get e_tooManyRequestsTryAgainLater {
    return Intl.message(
      'Количество запросов превышено. Попробуйте позже',
      name: 'e_tooManyRequestsTryAgainLater',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка сервера. Попробуйте позже`
  String get e_serverErrorTryAgainLater {
    return Intl.message(
      'Ошибка сервера. Попробуйте позже',
      name: 'e_serverErrorTryAgainLater',
      desc: '',
      args: [],
    );
  }

  /// `Запросить код повторно`
  String get e_requestAgain {
    return Intl.message(
      'Запросить код повторно',
      name: 'e_requestAgain',
      desc: '',
      args: [],
    );
  }

  /// `Запросить через {timerValue}`
  String e_requestInSomeTime(Object timerValue) {
    return Intl.message(
      'Запросить через $timerValue',
      name: 'e_requestInSomeTime',
      desc: '',
      args: [timerValue],
    );
  }

  /// `Проверьте ввод`
  String get e_checkInput {
    return Intl.message(
      'Проверьте ввод',
      name: 'e_checkInput',
      desc: '',
      args: [],
    );
  }

  /// `Что-то пошло не так`
  String get e_smthWentWrong {
    return Intl.message(
      'Что-то пошло не так',
      name: 'e_smthWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `{value} уже существует`
  String e_valueExist(Object value) {
    return Intl.message(
      '$value уже существует',
      name: 'e_valueExist',
      desc: '',
      args: [value],
    );
  }

  /// `Нет соединения`
  String get e_noConnection {
    return Intl.message(
      'Нет соединения',
      name: 'e_noConnection',
      desc: '',
      args: [],
    );
  }

  /// `Проверьте настройки сети`
  String get e_noConnectionDescription {
    return Intl.message(
      'Проверьте настройки сети',
      name: 'e_noConnectionDescription',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка`
  String get error {
    return Intl.message(
      'Ошибка',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Понятно`
  String get ok {
    return Intl.message(
      'Понятно',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Подтверждение`
  String get confirmation {
    return Intl.message(
      'Подтверждение',
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

  /// `Код отправлен на номер\n{phone}`
  String codeSentToPhone(Object phone) {
    return Intl.message(
      'Код отправлен на номер\n$phone',
      name: 'codeSentToPhone',
      desc: '',
      args: [phone],
    );
  }

  /// `Нет доступа к номеру?`
  String get noAccessToPhone {
    return Intl.message(
      'Нет доступа к номеру?',
      name: 'noAccessToPhone',
      desc: '',
      args: [],
    );
  }

  /// `Подключите Face ID\nДля безопасного и удобного входа в приложение`
  String get faceIdConnect {
    return Intl.message(
      'Подключите Face ID\nДля безопасного и удобного входа в приложение',
      name: 'faceIdConnect',
      desc: '',
      args: [],
    );
  }

  /// `Вы можете настроить вход по Face ID в разделе «Профиль»`
  String get faceIdSettingsWhere {
    return Intl.message(
      'Вы можете настроить вход по Face ID в разделе «Профиль»',
      name: 'faceIdSettingsWhere',
      desc: '',
      args: [],
    );
  }

  /// `Подключите Touch ID\nДля безопасного и удобного входа в приложение`
  String get touchIdConnect {
    return Intl.message(
      'Подключите Touch ID\nДля безопасного и удобного входа в приложение',
      name: 'touchIdConnect',
      desc: '',
      args: [],
    );
  }

  /// `Вы можете настроить вход по Touch ID в разделе «Профиль»`
  String get touchIdSettingsWhere {
    return Intl.message(
      'Вы можете настроить вход по Touch ID в разделе «Профиль»',
      name: 'touchIdSettingsWhere',
      desc: '',
      args: [],
    );
  }

  /// `Face ID`
  String get faceId {
    return Intl.message(
      'Face ID',
      name: 'faceId',
      desc: '',
      args: [],
    );
  }

  /// `Touch ID`
  String get touchId {
    return Intl.message(
      'Touch ID',
      name: 'touchId',
      desc: '',
      args: [],
    );
  }

  /// `Биометрия`
  String get biometry {
    return Intl.message(
      'Биометрия',
      name: 'biometry',
      desc: '',
      args: [],
    );
  }

  /// `Подключите биометрию\nДля безопасного и удобного входа в приложение`
  String get biometryConnect {
    return Intl.message(
      'Подключите биометрию\nДля безопасного и удобного входа в приложение',
      name: 'biometryConnect',
      desc: '',
      args: [],
    );
  }

  /// `Вы можете настроить вход по биометрии в разделе «Профиль»`
  String get biometrySettingsWhere {
    return Intl.message(
      'Вы можете настроить вход по биометрии в разделе «Профиль»',
      name: 'biometrySettingsWhere',
      desc: '',
      args: [],
    );
  }

  /// `Код недействителен`
  String get e_invalidCode {
    return Intl.message(
      'Код недействителен',
      name: 'e_invalidCode',
      desc: '',
      args: [],
    );
  }

  /// `Продолжить`
  String get proceed {
    return Intl.message(
      'Продолжить',
      name: 'proceed',
      desc: '',
      args: [],
    );
  }

  /// `Добро пожаловать`
  String get welcome {
    return Intl.message(
      'Добро пожаловать',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Для продолжения – введите номер телефона`
  String get forContinueEnterPhoneNumber {
    return Intl.message(
      'Для продолжения – введите номер телефона',
      name: 'forContinueEnterPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Нажимая «Продолжить», вы принимаете `
  String get byProceedingYouAgreeToThe {
    return Intl.message(
      'Нажимая «Продолжить», вы принимаете ',
      name: 'byProceedingYouAgreeToThe',
      desc: '',
      args: [],
    );
  }

  /// `условия пользовательского соглашения`
  String get termsOfService {
    return Intl.message(
      'условия пользовательского соглашения',
      name: 'termsOfService',
      desc: '',
      args: [],
    );
  }

  /// ` и даёте `
  String get andGive {
    return Intl.message(
      ' и даёте ',
      name: 'andGive',
      desc: '',
      args: [],
    );
  }

  /// `согласие на обработку персональных данных`
  String get privacyNotice {
    return Intl.message(
      'согласие на обработку персональных данных',
      name: 'privacyNotice',
      desc: '',
      args: [],
    );
  }

  /// `Придумайте код`
  String get setUpCode {
    return Intl.message(
      'Придумайте код',
      name: 'setUpCode',
      desc: '',
      args: [],
    );
  }

  /// `Повторите код`
  String get repeatCode {
    return Intl.message(
      'Повторите код',
      name: 'repeatCode',
      desc: '',
      args: [],
    );
  }

  /// `СМС-код`
  String get smsCode {
    return Intl.message(
      'СМС-код',
      name: 'smsCode',
      desc: '',
      args: [],
    );
  }

  /// `Получить код`
  String get receive_sms_code {
    return Intl.message(
      'Получить код',
      name: 'receive_sms_code',
      desc: '',
      args: [],
    );
  }

  /// `Необходимо войти с помощью биометрии`
  String get needToLoginWithBiometrics {
    return Intl.message(
      'Необходимо войти с помощью биометрии',
      name: 'needToLoginWithBiometrics',
      desc: '',
      args: [],
    );
  }

  /// `Подключить`
  String get connect {
    return Intl.message(
      'Подключить',
      name: 'connect',
      desc: '',
      args: [],
    );
  }

  /// `Пожалуйста, придумайте код для входа в приложение`
  String get pleaseSetUpPinCode {
    return Intl.message(
      'Пожалуйста, придумайте код для входа в приложение',
      name: 'pleaseSetUpPinCode',
      desc: '',
      args: [],
    );
  }

  /// `Код нужен, чтобы защитить ваши данные`
  String get codeIsRequiredToProtectData {
    return Intl.message(
      'Код нужен, чтобы защитить ваши данные',
      name: 'codeIsRequiredToProtectData',
      desc: '',
      args: [],
    );
  }

  /// `Пропустить`
  String get skip {
    return Intl.message(
      'Пропустить',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Ваша анкета`
  String get yourForm {
    return Intl.message(
      'Ваша анкета',
      name: 'yourForm',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать психолога`
  String get choosePsych {
    return Intl.message(
      'Выбрать психолога',
      name: 'choosePsych',
      desc: '',
      args: [],
    );
  }

  /// `Какая терапия Вам нужна?`
  String get whatTherapyYouNeed {
    return Intl.message(
      'Какая терапия Вам нужна?',
      name: 'whatTherapyYouNeed',
      desc: '',
      args: [],
    );
  }

  /// `Для меня`
  String get forMe {
    return Intl.message(
      'Для меня',
      name: 'forMe',
      desc: '',
      args: [],
    );
  }

  /// `Парная`
  String get forCouple {
    return Intl.message(
      'Парная',
      name: 'forCouple',
      desc: '',
      args: [],
    );
  }

  /// `Произошла ошибка. Повторите попытку позже`
  String get e_tryAgain {
    return Intl.message(
      'Произошла ошибка. Повторите попытку позже',
      name: 'e_tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Другой номер`
  String get anotherPhoneNumber {
    return Intl.message(
      'Другой номер',
      name: 'anotherPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Обратиться в поддержку`
  String get contactSupport {
    return Intl.message(
      'Обратиться в поддержку',
      name: 'contactSupport',
      desc: '',
      args: [],
    );
  }

  /// `Здесь появятся результаты поиска`
  String get search_results_hint {
    return Intl.message(
      'Здесь появятся результаты поиска',
      name: 'search_results_hint',
      desc: '',
      args: [],
    );
  }

  /// `Ничего не надено`
  String get nothing_found {
    return Intl.message(
      'Ничего не надено',
      name: 'nothing_found',
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

  /// `Фильтры`
  String get filters {
    return Intl.message(
      'Фильтры',
      name: 'filters',
      desc: '',
      args: [],
    );
  }

  /// `Применить фильтры`
  String get apply_filters {
    return Intl.message(
      'Применить фильтры',
      name: 'apply_filters',
      desc: '',
      args: [],
    );
  }

  /// `Опыт работы`
  String get work_experience {
    return Intl.message(
      'Опыт работы',
      name: 'work_experience',
      desc: '',
      args: [],
    );
  }

  /// `Дата сеанса`
  String get session_date {
    return Intl.message(
      'Дата сеанса',
      name: 'session_date',
      desc: '',
      args: [],
    );
  }

  /// `Время сеанса`
  String get session_time {
    return Intl.message(
      'Время сеанса',
      name: 'session_time',
      desc: '',
      args: [],
    );
  }

  /// `Тип сессии`
  String get session_type {
    return Intl.message(
      'Тип сессии',
      name: 'session_type',
      desc: '',
      args: [],
    );
  }

  /// `Стоимость сессии`
  String get session_price {
    return Intl.message(
      'Стоимость сессии',
      name: 'session_price',
      desc: '',
      args: [],
    );
  }

  /// `Пол терапевта`
  String get therapist_gender {
    return Intl.message(
      'Пол терапевта',
      name: 'therapist_gender',
      desc: '',
      args: [],
    );
  }

  /// `Возраст терапевта`
  String get therapist_age {
    return Intl.message(
      'Возраст терапевта',
      name: 'therapist_age',
      desc: '',
      args: [],
    );
  }

  /// `Сбросить`
  String get drop {
    return Intl.message(
      'Сбросить',
      name: 'drop',
      desc: '',
      args: [],
    );
  }

  /// `Закрыть`
  String get close {
    return Intl.message(
      'Закрыть',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Нет опыта`
  String get experienceZero {
    return Intl.message(
      'Нет опыта',
      name: 'experienceZero',
      desc: '',
      args: [],
    );
  }

  /// `год`
  String get experienceOne {
    return Intl.message(
      'год',
      name: 'experienceOne',
      desc: '',
      args: [],
    );
  }

  /// `года`
  String get experienceFew {
    return Intl.message(
      'года',
      name: 'experienceFew',
      desc: '',
      args: [],
    );
  }

  /// `лет`
  String get experienceOther {
    return Intl.message(
      'лет',
      name: 'experienceOther',
      desc: '',
      args: [],
    );
  }

  /// `психолог`
  String get therapist_countOne {
    return Intl.message(
      'психолог',
      name: 'therapist_countOne',
      desc: '',
      args: [],
    );
  }

  /// `психолога`
  String get therapist_countFew {
    return Intl.message(
      'психолога',
      name: 'therapist_countFew',
      desc: '',
      args: [],
    );
  }

  /// `психологов`
  String get therapist_countMany {
    return Intl.message(
      'психологов',
      name: 'therapist_countMany',
      desc: '',
      args: [],
    );
  }

  /// `Мои`
  String get mine {
    return Intl.message(
      'Мои',
      name: 'mine',
      desc: '',
      args: [],
    );
  }

  /// `Все`
  String get all {
    return Intl.message(
      'Все',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `без фото`
  String get no_photo {
    return Intl.message(
      'без фото',
      name: 'no_photo',
      desc: '',
      args: [],
    );
  }

  /// `Готово`
  String get apply {
    return Intl.message(
      'Готово',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Ваш Email`
  String get your_email {
    return Intl.message(
      'Ваш Email',
      name: 'your_email',
      desc: '',
      args: [],
    );
  }

  /// `Введите email`
  String get email_placeholder {
    return Intl.message(
      'Введите email',
      name: 'email_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `Email может быть использован для информирования психотерапевта и для возможности восстановления доступа к аккаунту.`
  String get email_description {
    return Intl.message(
      'Email может быть использован для информирования психотерапевта и для возможности восстановления доступа к аккаунту.',
      name: 'email_description',
      desc: '',
      args: [],
    );
  }

  /// `Персональные данные`
  String get personal_info {
    return Intl.message(
      'Персональные данные',
      name: 'personal_info',
      desc: '',
      args: [],
    );
  }

  /// `Телефон`
  String get phone {
    return Intl.message(
      'Телефон',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Ваш номер телефона`
  String get your_phone {
    return Intl.message(
      'Ваш номер телефона',
      name: 'your_phone',
      desc: '',
      args: [],
    );
  }

  /// `Вы можете изменить номер телефона на новый, который будет привязан к Вашему аккаунту взамен прежнего`
  String get phone_changing_description {
    return Intl.message(
      'Вы можете изменить номер телефона на новый, который будет привязан к Вашему аккаунту взамен прежнего',
      name: 'phone_changing_description',
      desc: '',
      args: [],
    );
  }

  /// `Номер телефона используется для авторизации пользователя в системе и для связи команды поддержки с психотерапевтом.`
  String get phone_description {
    return Intl.message(
      'Номер телефона используется для авторизации пользователя в системе и для связи команды поддержки с психотерапевтом.',
      name: 'phone_description',
      desc: '',
      args: [],
    );
  }

  /// `Уведомления`
  String get notification {
    return Intl.message(
      'Уведомления',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Платежи и карты`
  String get payments {
    return Intl.message(
      'Платежи и карты',
      name: 'payments',
      desc: '',
      args: [],
    );
  }

  /// `Ваша анкета`
  String get your_questionnaire {
    return Intl.message(
      'Ваша анкета',
      name: 'your_questionnaire',
      desc: '',
      args: [],
    );
  }

  /// `Настройки`
  String get settings {
    return Intl.message(
      'Настройки',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Биллинг`
  String get billing {
    return Intl.message(
      'Биллинг',
      name: 'billing',
      desc: '',
      args: [],
    );
  }

  /// `Сведения`
  String get user_info {
    return Intl.message(
      'Сведения',
      name: 'user_info',
      desc: '',
      args: [],
    );
  }

  /// `Дата рождения`
  String get birthday {
    return Intl.message(
      'Дата рождения',
      name: 'birthday',
      desc: '',
      args: [],
    );
  }

  /// `Введите дату`
  String get birthday_placeholder {
    return Intl.message(
      'Введите дату',
      name: 'birthday_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `Имя`
  String get name {
    return Intl.message(
      'Имя',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Фамилия`
  String get surname {
    return Intl.message(
      'Фамилия',
      name: 'surname',
      desc: '',
      args: [],
    );
  }

  /// `Пол`
  String get sex {
    return Intl.message(
      'Пол',
      name: 'sex',
      desc: '',
      args: [],
    );
  }

  /// `Укажите пол`
  String get sex_placeholder {
    return Intl.message(
      'Укажите пол',
      name: 'sex_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `Мужской`
  String get sex_male {
    return Intl.message(
      'Мужской',
      name: 'sex_male',
      desc: '',
      args: [],
    );
  }

  /// `Женский`
  String get sex_female {
    return Intl.message(
      'Женский',
      name: 'sex_female',
      desc: '',
      args: [],
    );
  }

  /// `Другое`
  String get sex_other {
    return Intl.message(
      'Другое',
      name: 'sex_other',
      desc: '',
      args: [],
    );
  }

  /// `индивидуальная`
  String get individual {
    return Intl.message(
      'индивидуальная',
      name: 'individual',
      desc: '',
      args: [],
    );
  }

  /// `для пары`
  String get forPair {
    return Intl.message(
      'для пары',
      name: 'forPair',
      desc: '',
      args: [],
    );
  }

  /// `Сегодня`
  String get today {
    return Intl.message(
      'Сегодня',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Вчера`
  String get yesterday {
    return Intl.message(
      'Вчера',
      name: 'yesterday',
      desc: '',
      args: [],
    );
  }

  /// `Уведомлять по SMS`
  String get notify_by_sms {
    return Intl.message(
      'Уведомлять по SMS',
      name: 'notify_by_sms',
      desc: '',
      args: [],
    );
  }

  /// `Уведомлять по электронной почте`
  String get notify_by_email {
    return Intl.message(
      'Уведомлять по электронной почте',
      name: 'notify_by_email',
      desc: '',
      args: [],
    );
  }

  /// `Уведомлять о записях`
  String get notifications_appointment_title {
    return Intl.message(
      'Уведомлять о записях',
      name: 'notifications_appointment_title',
      desc: '',
      args: [],
    );
  }

  /// `Получать информацию о создании записей, действии над ними: изменениями, переносе или отмене записей. Получать уведомления о предстоящей сессии.`
  String get notifications_appointment_description {
    return Intl.message(
      'Получать информацию о создании записей, действии над ними: изменениями, переносе или отмене записей. Получать уведомления о предстоящей сессии.',
      name: 'notifications_appointment_description',
      desc: '',
      args: [],
    );
  }

  /// `Уведомлять о начале сеанса`
  String get notifications_appointment_starts_title {
    return Intl.message(
      'Уведомлять о начале сеанса',
      name: 'notifications_appointment_starts_title',
      desc: '',
      args: [],
    );
  }

  /// `Получать уведомления за 15 минут до начала сеанса`
  String get notifications_appointment_starts_description {
    return Intl.message(
      'Получать уведомления за 15 минут до начала сеанса',
      name: 'notifications_appointment_starts_description',
      desc: '',
      args: [],
    );
  }

  /// `Уведомлять о сообщениях в чатах`
  String get notifications_conversation_messages_title {
    return Intl.message(
      'Уведомлять о сообщениях в чатах',
      name: 'notifications_conversation_messages_title',
      desc: '',
      args: [],
    );
  }

  /// `Получать уведомления о сообщениях в чате`
  String get notifications_conversation_messages_description {
    return Intl.message(
      'Получать уведомления о сообщениях в чате',
      name: 'notifications_conversation_messages_description',
      desc: '',
      args: [],
    );
  }

  /// `Редактирование фотографии профиля`
  String get avatar_edit {
    return Intl.message(
      'Редактирование фотографии профиля',
      name: 'avatar_edit',
      desc: '',
      args: [],
    );
  }

  /// `Удалить фотографию профиля`
  String get avatar_delete {
    return Intl.message(
      'Удалить фотографию профиля',
      name: 'avatar_delete',
      desc: '',
      args: [],
    );
  }

  /// `Вы действительно хотите удалить фото профиля?`
  String get avatar_delete_confirmation {
    return Intl.message(
      'Вы действительно хотите удалить фото профиля?',
      name: 'avatar_delete_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Снять фото`
  String get take_a_photo {
    return Intl.message(
      'Снять фото',
      name: 'take_a_photo',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать фото`
  String get select_from_gallery {
    return Intl.message(
      'Выбрать фото',
      name: 'select_from_gallery',
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

  /// `Выход`
  String get logOut {
    return Intl.message(
      'Выход',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `Анкета`
  String get form {
    return Intl.message(
      'Анкета',
      name: 'form',
      desc: '',
      args: [],
    );
  }

  /// `Уточнить`
  String get editForm {
    return Intl.message(
      'Уточнить',
      name: 'editForm',
      desc: '',
      args: [],
    );
  }

  /// `Начать новую`
  String get createForm {
    return Intl.message(
      'Начать новую',
      name: 'createForm',
      desc: '',
      args: [],
    );
  }

  /// `Продолжите заполнение нажав «Уточнить» или начните новую анкету.`
  String get editFormGuide {
    return Intl.message(
      'Продолжите заполнение нажав «Уточнить» или начните новую анкету.',
      name: 'editFormGuide',
      desc: '',
      args: [],
    );
  }

  /// `Введен неверный код`
  String get e_invalidConfirmationCode {
    return Intl.message(
      'Введен неверный код',
      name: 'e_invalidConfirmationCode',
      desc: '',
      args: [],
    );
  }

  /// `Слишком много неверных попыток, запросите новый код и попробуйте снова`
  String get e_tooManyInvalidCodeAttempts {
    return Intl.message(
      'Слишком много неверных попыток, запросите новый код и попробуйте снова',
      name: 'e_tooManyInvalidCodeAttempts',
      desc: '',
      args: [],
    );
  }

  /// `Есть утерянные файлы. Восстановить?`
  String get restore_image_confirmation {
    return Intl.message(
      'Есть утерянные файлы. Восстановить?',
      name: 'restore_image_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Сеансы`
  String get appointments {
    return Intl.message(
      'Сеансы',
      name: 'appointments',
      desc: '',
      args: [],
    );
  }

  /// `Предстоящие`
  String get upcoming {
    return Intl.message(
      'Предстоящие',
      name: 'upcoming',
      desc: '',
      args: [],
    );
  }

  /// `История`
  String get history {
    return Intl.message(
      'История',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Блог`
  String get blog {
    return Intl.message(
      'Блог',
      name: 'blog',
      desc: '',
      args: [],
    );
  }

  /// `Сеансы`
  String get sessions {
    return Intl.message(
      'Сеансы',
      name: 'sessions',
      desc: '',
      args: [],
    );
  }

  /// `Чаты`
  String get chats {
    return Intl.message(
      'Чаты',
      name: 'chats',
      desc: '',
      args: [],
    );
  }

  /// `Профиль`
  String get profile {
    return Intl.message(
      'Профиль',
      name: 'profile',
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

  /// `Возникла ошибка`
  String get error_occurred {
    return Intl.message(
      'Возникла ошибка',
      name: 'error_occurred',
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

  /// `Сохранить`
  String get save {
    return Intl.message(
      'Сохранить',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Сведения о сессии`
  String get session_info {
    return Intl.message(
      'Сведения о сессии',
      name: 'session_info',
      desc: '',
      args: [],
    );
  }

  /// `Тип сессии`
  String get session_class {
    return Intl.message(
      'Тип сессии',
      name: 'session_class',
      desc: '',
      args: [],
    );
  }

  /// `Дата проведения`
  String get date_of_the_event {
    return Intl.message(
      'Дата проведения',
      name: 'date_of_the_event',
      desc: '',
      args: [],
    );
  }

  /// `Время начала сессии`
  String get session_start_time {
    return Intl.message(
      'Время начала сессии',
      name: 'session_start_time',
      desc: '',
      args: [],
    );
  }

  /// `Оплатить`
  String get pay {
    return Intl.message(
      'Оплатить',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `Оплата сессии`
  String get session_payment {
    return Intl.message(
      'Оплата сессии',
      name: 'session_payment',
      desc: '',
      args: [],
    );
  }

  /// `К сожалению, мы не смогли провести оплату вашего сеанса, попробуйте снова или обратитесь в тех. поддержку`
  String get session_payment_error_description {
    return Intl.message(
      'К сожалению, мы не смогли провести оплату вашего сеанса, попробуйте снова или обратитесь в тех. поддержку',
      name: 'session_payment_error_description',
      desc: '',
      args: [],
    );
  }

  /// `Техническая поддержка`
  String get technical_support {
    return Intl.message(
      'Техническая поддержка',
      name: 'technical_support',
      desc: '',
      args: [],
    );
  }

  /// `Длительность сеанса составляет`
  String get session_duration_is {
    return Intl.message(
      'Длительность сеанса составляет',
      name: 'session_duration_is',
      desc: '',
      args: [],
    );
  }

  /// `минут`
  String get minutes {
    return Intl.message(
      'минут',
      name: 'minutes',
      desc: '',
      args: [],
    );
  }

  /// `На эту дату нет свободных временных промежутков`
  String get session_date_error_description {
    return Intl.message(
      'На эту дату нет свободных временных промежутков',
      name: 'session_date_error_description',
      desc: '',
      args: [],
    );
  }

  /// `Успешно`
  String get success {
    return Intl.message(
      'Успешно',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Сеанс успешно оплачен`
  String get session_successfully_paid {
    return Intl.message(
      'Сеанс успешно оплачен',
      name: 'session_successfully_paid',
      desc: '',
      args: [],
    );
  }

  /// `Перейдите на вкладку сеансов, чтобы не пропустить видеозвонок`
  String get session_call_tip {
    return Intl.message(
      'Перейдите на вкладку сеансов, чтобы не пропустить видеозвонок',
      name: 'session_call_tip',
      desc: '',
      args: [],
    );
  }

  /// `Квитанция`
  String get receipt {
    return Intl.message(
      'Квитанция',
      name: 'receipt',
      desc: '',
      args: [],
    );
  }

  /// `Оплата`
  String get payment {
    return Intl.message(
      'Оплата',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Новая карта`
  String get addNewCard {
    return Intl.message(
      'Новая карта',
      name: 'addNewCard',
      desc: '',
      args: [],
    );
  }

  /// `Страница находится в разработке`
  String get workInProgress {
    return Intl.message(
      'Страница находится в разработке',
      name: 'workInProgress',
      desc: '',
      args: [],
    );
  }

  /// `Важное обо мне`
  String get bio {
    return Intl.message(
      'Важное обо мне',
      name: 'bio',
      desc: '',
      args: [],
    );
  }

  /// `Образование`
  String get education {
    return Intl.message(
      'Образование',
      name: 'education',
      desc: '',
      args: [],
    );
  }

  /// `Принципы работы`
  String get principleOfOperation {
    return Intl.message(
      'Принципы работы',
      name: 'principleOfOperation',
      desc: '',
      args: [],
    );
  }

  /// `{price} ₽/час`
  String pricePerHour(Object price) {
    return Intl.message(
      '$price ₽/час',
      name: 'pricePerHour',
      desc: '',
      args: [price],
    );
  }

  /// `Записаться`
  String get enroll {
    return Intl.message(
      'Записаться',
      name: 'enroll',
      desc: '',
      args: [],
    );
  }

  /// `Автор`
  String get author {
    return Intl.message(
      'Автор',
      name: 'author',
      desc: '',
      args: [],
    );
  }

  /// `Использовать по умолч.`
  String get useByDefault {
    return Intl.message(
      'Использовать по умолч.',
      name: 'useByDefault',
      desc: '',
      args: [],
    );
  }

  /// `Удалить карту`
  String get deleteCard {
    return Intl.message(
      'Удалить карту',
      name: 'deleteCard',
      desc: '',
      args: [],
    );
  }

  /// `Другие публикации...`
  String get otherPublications {
    return Intl.message(
      'Другие публикации...',
      name: 'otherPublications',
      desc: '',
      args: [],
    );
  }

  /// `Недостаточно средств`
  String get e_insufficientFunds {
    return Intl.message(
      'Недостаточно средств',
      name: 'e_insufficientFunds',
      desc: '',
      args: [],
    );
  }

  /// `Оплата сеанса`
  String get sessionPayment {
    return Intl.message(
      'Оплата сеанса',
      name: 'sessionPayment',
      desc: '',
      args: [],
    );
  }

  /// `Возврат средств`
  String get refund {
    return Intl.message(
      'Возврат средств',
      name: 'refund',
      desc: '',
      args: [],
    );
  }

  /// `Платежи и карты`
  String get paymentsAndCards {
    return Intl.message(
      'Платежи и карты',
      name: 'paymentsAndCards',
      desc: '',
      args: [],
    );
  }

  /// `Психолог`
  String get therapist {
    return Intl.message(
      'Психолог',
      name: 'therapist',
      desc: '',
      args: [],
    );
  }

  /// `Ещё...`
  String get moreWithDots {
    return Intl.message(
      'Ещё...',
      name: 'moreWithDots',
      desc: '',
      args: [],
    );
  }

  /// `Недоступно`
  String get unavailable {
    return Intl.message(
      'Недоступно',
      name: 'unavailable',
      desc: '',
      args: [],
    );
  }

  /// `До {price} ₽`
  String toPrice(Object price) {
    return Intl.message(
      'До $price ₽',
      name: 'toPrice',
      desc: '',
      args: [price],
    );
  }

  /// `От {price} до {priceAnother} ₽`
  String fromPriceToPriceAnother(Object price, Object priceAnother) {
    return Intl.message(
      'От $price до $priceAnother ₽',
      name: 'fromPriceToPriceAnother',
      desc: '',
      args: [price, priceAnother],
    );
  }

  /// `От {price} ₽`
  String fromPrice(Object price) {
    return Intl.message(
      'От $price ₽',
      name: 'fromPrice',
      desc: '',
      args: [price],
    );
  }

  /// `Утро`
  String get morning {
    return Intl.message(
      'Утро',
      name: 'morning',
      desc: '',
      args: [],
    );
  }

  /// `День`
  String get afternoon {
    return Intl.message(
      'День',
      name: 'afternoon',
      desc: '',
      args: [],
    );
  }

  /// `Вечер`
  String get evening {
    return Intl.message(
      'Вечер',
      name: 'evening',
      desc: '',
      args: [],
    );
  }

  /// `Выберите дату`
  String get selectDate {
    return Intl.message(
      'Выберите дату',
      name: 'selectDate',
      desc: '',
      args: [],
    );
  }

  /// `Нет доступного времени для записи`
  String get empty_slots_error {
    return Intl.message(
      'Нет доступного времени для записи',
      name: 'empty_slots_error',
      desc: '',
      args: [],
    );
  }

  /// `В данный момент все записи у этого психолога заняты.`
  String get empty_slots_description {
    return Intl.message(
      'В данный момент все записи у этого психолога заняты.',
      name: 'empty_slots_description',
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

  /// `Терапия для меня`
  String get therapy_for_me {
    return Intl.message(
      'Терапия для меня',
      name: 'therapy_for_me',
      desc: '',
      args: [],
    );
  }

  /// `Парная терапия`
  String get therapy_for_couple {
    return Intl.message(
      'Парная терапия',
      name: 'therapy_for_couple',
      desc: '',
      args: [],
    );
  }

  /// `Перенести сеанс`
  String get reschedule_session {
    return Intl.message(
      'Перенести сеанс',
      name: 'reschedule_session',
      desc: '',
      args: [],
    );
  }

  /// `Отменить запись`
  String get cancel_entry {
    return Intl.message(
      'Отменить запись',
      name: 'cancel_entry',
      desc: '',
      args: [],
    );
  }

  /// `Открыть чат с психологом`
  String get open_a_chat {
    return Intl.message(
      'Открыть чат с психологом',
      name: 'open_a_chat',
      desc: '',
      args: [],
    );
  }

  /// `Время завершения сессии`
  String get session_end_time {
    return Intl.message(
      'Время завершения сессии',
      name: 'session_end_time',
      desc: '',
      args: [],
    );
  }

  /// `Вы хотите отменить запись?`
  String get cancel_session_header_popup {
    return Intl.message(
      'Вы хотите отменить запись?',
      name: 'cancel_session_header_popup',
      desc: '',
      args: [],
    );
  }

  /// `Если до отмены записи осталось менее 24 часов, потраченные деньги за сессию возврату не подлежат`
  String get cancel_warning_24_hours_popup {
    return Intl.message(
      'Если до отмены записи осталось менее 24 часов, потраченные деньги за сессию возврату не подлежат',
      name: 'cancel_warning_24_hours_popup',
      desc: '',
      args: [],
    );
  }

  /// `Если сессия отменена менее чем за 24 часа до начала, средства не будут возвращены на ваш счет.`
  String get cancel_warning_24_hours {
    return Intl.message(
      'Если сессия отменена менее чем за 24 часа до начала, средства не будут возвращены на ваш счет.',
      name: 'cancel_warning_24_hours',
      desc: '',
      args: [],
    );
  }

  /// `мин.`
  String get minutes_short {
    return Intl.message(
      'мин.',
      name: 'minutes_short',
      desc: '',
      args: [],
    );
  }

  /// `Забронировано`
  String get booked {
    return Intl.message(
      'Забронировано',
      name: 'booked',
      desc: '',
      args: [],
    );
  }

  /// `Квитанция пока не готова`
  String get receipt_not_ready {
    return Intl.message(
      'Квитанция пока не готова',
      name: 'receipt_not_ready',
      desc: '',
      args: [],
    );
  }

  /// `Сменить дату`
  String get change_date {
    return Intl.message(
      'Сменить дату',
      name: 'change_date',
      desc: '',
      args: [],
    );
  }

  /// `В данный момент предстоящих сеансов нет`
  String get empty_upcoming_appointments {
    return Intl.message(
      'В данный момент предстоящих сеансов нет',
      name: 'empty_upcoming_appointments',
      desc: '',
      args: [],
    );
  }

  /// `Запишитесь на новую сессию, после этого вы увидите предстоящие сеансы`
  String get empty_upcoming_appointments_description {
    return Intl.message(
      'Запишитесь на новую сессию, после этого вы увидите предстоящие сеансы',
      name: 'empty_upcoming_appointments_description',
      desc: '',
      args: [],
    );
  }

  /// `Вы еще не были на сеансе с психологом`
  String get empty_appointment_history {
    return Intl.message(
      'Вы еще не были на сеансе с психологом',
      name: 'empty_appointment_history',
      desc: '',
      args: [],
    );
  }

  /// `Запишитесь на первую сессию, после этого история станет доступна в этом разделе`
  String get empty_appointment_history_description {
    return Intl.message(
      'Запишитесь на первую сессию, после этого история станет доступна в этом разделе',
      name: 'empty_appointment_history_description',
      desc: '',
      args: [],
    );
  }

  /// `Скидка {discount}% на первый сеанс`
  String first_appointment_discount(Object discount) {
    return Intl.message(
      'Скидка $discount% на первый сеанс',
      name: 'first_appointment_discount',
      desc: '',
      args: [discount],
    );
  }

  /// `Действует в течении первых 2 часов после регистрации`
  String get first_appointment_discount_description {
    return Intl.message(
      'Действует в течении первых 2 часов после регистрации',
      name: 'first_appointment_discount_description',
      desc: '',
      args: [],
    );
  }

  /// `Стоимость со скидкой:`
  String get price_with_discount {
    return Intl.message(
      'Стоимость со скидкой:',
      name: 'price_with_discount',
      desc: '',
      args: [],
    );
  }

  /// `Старая цена:`
  String get old_price {
    return Intl.message(
      'Старая цена:',
      name: 'old_price',
      desc: '',
      args: [],
    );
  }

  /// `Скидка за прохождение анкеты`
  String get discount_for_questionnaire {
    return Intl.message(
      'Скидка за прохождение анкеты',
      name: 'discount_for_questionnaire',
      desc: '',
      args: [],
    );
  }

  /// `Скидка за регистрацию`
  String get discount_for_registration {
    return Intl.message(
      'Скидка за регистрацию',
      name: 'discount_for_registration',
      desc: '',
      args: [],
    );
  }

  /// `Скидка`
  String get discount {
    return Intl.message(
      'Скидка',
      name: 'discount',
      desc: '',
      args: [],
    );
  }

  /// `У данного психотерапевта в данный момент нет свободных окон`
  String get empty_slots_on_detail {
    return Intl.message(
      'У данного психотерапевта в данный момент нет свободных окон',
      name: 'empty_slots_on_detail',
      desc: '',
      args: [],
    );
  }

  /// `Хорошо`
  String get good {
    return Intl.message(
      'Хорошо',
      name: 'good',
      desc: '',
      args: [],
    );
  }

  /// `Интересные статьи`
  String get interesting_articles {
    return Intl.message(
      'Интересные статьи',
      name: 'interesting_articles',
      desc: '',
      args: [],
    );
  }

  /// `Вы посмотрели все статьи ({length})`
  String all_articles_viewed(Object length) {
    return Intl.message(
      'Вы посмотрели все статьи ($length)',
      name: 'all_articles_viewed',
      desc: '',
      args: [length],
    );
  }

  /// `Вы посмотрели всех психологов ({length})`
  String all_therapists_viewed(Object length) {
    return Intl.message(
      'Вы посмотрели всех психологов ($length)',
      name: 'all_therapists_viewed',
      desc: '',
      args: [length],
    );
  }

  /// `Встреча состоится через 5 минут`
  String get appointment_starts_in_5_minutes {
    return Intl.message(
      'Встреча состоится через 5 минут',
      name: 'appointment_starts_in_5_minutes',
      desc: '',
      args: [],
    );
  }

  /// `Встреча была перенесена`
  String get appointment_has_been_moved {
    return Intl.message(
      'Встреча была перенесена',
      name: 'appointment_has_been_moved',
      desc: '',
      args: [],
    );
  }

  /// `Встреча началась`
  String get appointment_started {
    return Intl.message(
      'Встреча началась',
      name: 'appointment_started',
      desc: '',
      args: [],
    );
  }

  /// `Встреча была отменена`
  String get appointment_has_been_cancelled {
    return Intl.message(
      'Встреча была отменена',
      name: 'appointment_has_been_cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Осталось {minutes} минут!`
  String discount_expires_soon(Object minutes) {
    return Intl.message(
      'Осталось $minutes минут!',
      name: 'discount_expires_soon',
      desc: '',
      args: [minutes],
    );
  }

  /// `Успей использовать скидку на первый сеанс с психологом по сниженной цене.`
  String get discount_expires_description {
    return Intl.message(
      'Успей использовать скидку на первый сеанс с психологом по сниженной цене.',
      name: 'discount_expires_description',
      desc: '',
      args: [],
    );
  }

  /// `Присоединиться`
  String get session_connect {
    return Intl.message(
      'Присоединиться',
      name: 'session_connect',
      desc: '',
      args: [],
    );
  }

  /// `Здесь вы можете поддерживать связь со своим психологом или обращаться за помощью в чат поддержки`
  String get chatsPlaceholder {
    return Intl.message(
      'Здесь вы можете поддерживать связь со своим психологом или обращаться за помощью в чат поддержки',
      name: 'chatsPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Назад`
  String get backButtonTooltip {
    return Intl.message(
      'Назад',
      name: 'backButtonTooltip',
      desc: '',
      args: [],
    );
  }

  /// `Поиск сообщений`
  String get searchMessagesButtonTooltip {
    return Intl.message(
      'Поиск сообщений',
      name: 'searchMessagesButtonTooltip',
      desc: '',
      args: [],
    );
  }

  /// `Ваше сообщение`
  String get inputHint {
    return Intl.message(
      'Ваше сообщение',
      name: 'inputHint',
      desc: '',
      args: [],
    );
  }

  /// `Файл`
  String get file {
    return Intl.message(
      'Файл',
      name: 'file',
      desc: '',
      args: [],
    );
  }

  /// `Ещё не было сообщений. Начните диалог первым!`
  String get emptyChatLastMessage {
    return Intl.message(
      'Ещё не было сообщений. Начните диалог первым!',
      name: 'emptyChatLastMessage',
      desc: '',
      args: [],
    );
  }

  /// `Добавить подпись`
  String get addCaption {
    return Intl.message(
      'Добавить подпись',
      name: 'addCaption',
      desc: '',
      args: [],
    );
  }

  /// `Фотографии`
  String get photo {
    return Intl.message(
      'Фотографии',
      name: 'photo',
      desc: '',
      args: [],
    );
  }

  /// `Документы`
  String get documents {
    return Intl.message(
      'Документы',
      name: 'documents',
      desc: '',
      args: [],
    );
  }

  /// `Вы действительно хотите выйти из приложения «MOST»?`
  String get exit_warning {
    return Intl.message(
      'Вы действительно хотите выйти из приложения «MOST»?',
      name: 'exit_warning',
      desc: '',
      args: [],
    );
  }

  /// `Выход приведет к выходу из сессии. Если сессия активна, вы сможете войти в неё снова.\nВы действительно хотите выйти?`
  String get call_exit_warning {
    return Intl.message(
      'Выход приведет к выходу из сессии. Если сессия активна, вы сможете войти в неё снова.\nВы действительно хотите выйти?',
      name: 'call_exit_warning',
      desc: '',
      args: [],
    );
  }

  /// `Произошла ошибка при создании ссылки.\nВозможно сеанс еще не начался.`
  String get call_link_configuration_failed {
    return Intl.message(
      'Произошла ошибка при создании ссылки.\nВозможно сеанс еще не начался.',
      name: 'call_link_configuration_failed',
      desc: '',
      args: [],
    );
  }

  /// `Комната в процессе создания.\nПовторите попытку позже`
  String get call_creating_message {
    return Intl.message(
      'Комната в процессе создания.\nПовторите попытку позже',
      name: 'call_creating_message',
      desc: '',
      args: [],
    );
  }

  /// `Сессия с психологом завершена`
  String get call_session_over {
    return Intl.message(
      'Сессия с психологом завершена',
      name: 'call_session_over',
      desc: '',
      args: [],
    );
  }

  /// `Добавить фото`
  String get addPhoto {
    return Intl.message(
      'Добавить фото',
      name: 'addPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Печатает...`
  String get typing {
    return Intl.message(
      'Печатает...',
      name: 'typing',
      desc: '',
      args: [],
    );
  }

  /// `Добавить документ`
  String get addDocument {
    return Intl.message(
      'Добавить документ',
      name: 'addDocument',
      desc: '',
      args: [],
    );
  }

  /// `Вы действительно хотите выйти из приложения?`
  String get logout_confirmation {
    return Intl.message(
      'Вы действительно хотите выйти из приложения?',
      name: 'logout_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Вложения`
  String get attachments {
    return Intl.message(
      'Вложения',
      name: 'attachments',
      desc: '',
      args: [],
    );
  }

  /// `Терапия принятия и ответственности`
  String get mainSpecialization_acceptance_and_responsibility_therapy {
    return Intl.message(
      'Терапия принятия и ответственности',
      name: 'mainSpecialization_acceptance_and_responsibility_therapy',
      desc: '',
      args: [],
    );
  }

  /// `Арт-терапия`
  String get mainSpecialization_art_therapy {
    return Intl.message(
      'Арт-терапия',
      name: 'mainSpecialization_art_therapy',
      desc: '',
      args: [],
    );
  }

  /// `Телесно-ориентированная психотерапия`
  String get mainSpecialization_body_oriented_therapy {
    return Intl.message(
      'Телесно-ориентированная психотерапия',
      name: 'mainSpecialization_body_oriented_therapy',
      desc: '',
      args: [],
    );
  }

  /// `Клиент-центрированная психотерапия`
  String get mainSpecialization_client_centered_therapy {
    return Intl.message(
      'Клиент-центрированная психотерапия',
      name: 'mainSpecialization_client_centered_therapy',
      desc: '',
      args: [],
    );
  }

  /// `Когнитивно-поведенческая терапия`
  String get mainSpecialization_cognitive_behavioral_therapy {
    return Intl.message(
      'Когнитивно-поведенческая терапия',
      name: 'mainSpecialization_cognitive_behavioral_therapy',
      desc: '',
      args: [],
    );
  }

  /// `DBD`
  String get mainSpecialization_dbd {
    return Intl.message(
      'DBD',
      name: 'mainSpecialization_dbd',
      desc: '',
      args: [],
    );
  }

  /// `EMDR`
  String get mainSpecialization_emdr {
    return Intl.message(
      'EMDR',
      name: 'mainSpecialization_emdr',
      desc: '',
      args: [],
    );
  }

  /// `Эмоционально-образная терапия`
  String get mainSpecialization_emotional_image_therapy {
    return Intl.message(
      'Эмоционально-образная терапия',
      name: 'mainSpecialization_emotional_image_therapy',
      desc: '',
      args: [],
    );
  }

  /// `Экзистенциальный анализ`
  String get mainSpecialization_existential_analysis {
    return Intl.message(
      'Экзистенциальный анализ',
      name: 'mainSpecialization_existential_analysis',
      desc: '',
      args: [],
    );
  }

  /// `Экзистенциальная психотерапия`
  String get mainSpecialization_existential_psychotherapy {
    return Intl.message(
      'Экзистенциальная психотерапия',
      name: 'mainSpecialization_existential_psychotherapy',
      desc: '',
      args: [],
    );
  }

  /// `Гештальт-терапия`
  String get mainSpecialization_gestalt_therapy {
    return Intl.message(
      'Гештальт-терапия',
      name: 'mainSpecialization_gestalt_therapy',
      desc: '',
      args: [],
    );
  }

  /// `Гипноз`
  String get mainSpecialization_hypnosis {
    return Intl.message(
      'Гипноз',
      name: 'mainSpecialization_hypnosis',
      desc: '',
      args: [],
    );
  }

  /// `Интегративная терапия`
  String get mainSpecialization_integrative_therapy {
    return Intl.message(
      'Интегративная терапия',
      name: 'mainSpecialization_integrative_therapy',
      desc: '',
      args: [],
    );
  }

  /// `Юнгианский анализ`
  String get mainSpecialization_jungian_analysis {
    return Intl.message(
      'Юнгианский анализ',
      name: 'mainSpecialization_jungian_analysis',
      desc: '',
      args: [],
    );
  }

  /// `Нарративная терапия`
  String get mainSpecialization_narrative_therapy {
    return Intl.message(
      'Нарративная терапия',
      name: 'mainSpecialization_narrative_therapy',
      desc: '',
      args: [],
    );
  }

  /// `Процессуальная терапия`
  String get mainSpecialization_process_therapy {
    return Intl.message(
      'Процессуальная терапия',
      name: 'mainSpecialization_process_therapy',
      desc: '',
      args: [],
    );
  }

  /// `Процессуальная терапия`
  String get mainSpecialization_psychoanalytic_therapy {
    return Intl.message(
      'Процессуальная терапия',
      name: 'mainSpecialization_psychoanalytic_therapy',
      desc: '',
      args: [],
    );
  }

  /// `Психодрама`
  String get mainSpecialization_psychodrama {
    return Intl.message(
      'Психодрама',
      name: 'mainSpecialization_psychodrama',
      desc: '',
      args: [],
    );
  }

  /// `Схема-терапия`
  String get mainSpecialization_schema_therapy {
    return Intl.message(
      'Схема-терапия',
      name: 'mainSpecialization_schema_therapy',
      desc: '',
      args: [],
    );
  }

  /// `Символдрама`
  String get mainSpecialization_symbolic_drama {
    return Intl.message(
      'Символдрама',
      name: 'mainSpecialization_symbolic_drama',
      desc: '',
      args: [],
    );
  }

  /// `Системная семейная терапия`
  String get mainSpecialization_systemic_family_therapy {
    return Intl.message(
      'Системная семейная терапия',
      name: 'mainSpecialization_systemic_family_therapy',
      desc: '',
      args: [],
    );
  }

  /// `Транзактный анализ`
  String get mainSpecialization_transactional_analysis {
    return Intl.message(
      'Транзактный анализ',
      name: 'mainSpecialization_transactional_analysis',
      desc: '',
      args: [],
    );
  }

  /// `И ещё {value}`
  String expandable_count(Object value) {
    return Intl.message(
      'И ещё $value',
      name: 'expandable_count',
      desc: '',
      args: [value],
    );
  }

  /// `Скрыть`
  String get hide {
    return Intl.message(
      'Скрыть',
      name: 'hide',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<L10n> {
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
  Future<L10n> load(Locale locale) => L10n.load(locale);
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
