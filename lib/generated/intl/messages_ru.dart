// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(length) => "Вы посмотрели все статьи (${length})";

  static String m1(length) => "Вы посмотрели всех психологов (${length})";

  static String m2(phone) => "Код отправлен на номер\n${phone}";

  static String m3(minutes) => "Осталось ${minutes} минут!";

  static String m4(timerValue) => "Запросить через ${timerValue}";

  static String m5(value) => "${value} уже существует";

  static String m6(value) => "И ещё ${value}";

  static String m7(discount) => "Скидка ${discount}% на первый сеанс";

  static String m8(price) => "От ${price} ₽";

  static String m9(price, priceAnother) => "От ${price} до ${priceAnother} ₽";

  static String m10(price) => "${price} ₽/час";

  static String m11(price) => "До ${price} ₽";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addCaption": MessageLookupByLibrary.simpleMessage("Добавить подпись"),
        "addDocument":
            MessageLookupByLibrary.simpleMessage("Добавить документ"),
        "addNewCard": MessageLookupByLibrary.simpleMessage("Новая карта"),
        "addPhoto": MessageLookupByLibrary.simpleMessage("Добавить фото"),
        "afternoon": MessageLookupByLibrary.simpleMessage("День"),
        "all": MessageLookupByLibrary.simpleMessage("Все"),
        "all_articles_viewed": m0,
        "all_therapists_viewed": m1,
        "andGive": MessageLookupByLibrary.simpleMessage(" и даёте "),
        "anotherPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Другой номер"),
        "apply": MessageLookupByLibrary.simpleMessage("Готово"),
        "apply_filters":
            MessageLookupByLibrary.simpleMessage("Применить фильтры"),
        "appointment_has_been_cancelled":
            MessageLookupByLibrary.simpleMessage("Встреча была отменена"),
        "appointment_has_been_moved":
            MessageLookupByLibrary.simpleMessage("Встреча была перенесена"),
        "appointment_started":
            MessageLookupByLibrary.simpleMessage("Встреча началась"),
        "appointment_starts_in_5_minutes": MessageLookupByLibrary.simpleMessage(
            "Встреча состоится через 5 минут"),
        "appointments": MessageLookupByLibrary.simpleMessage("Сеансы"),
        "attachments": MessageLookupByLibrary.simpleMessage("Вложения"),
        "author": MessageLookupByLibrary.simpleMessage("Автор"),
        "avatar_delete":
            MessageLookupByLibrary.simpleMessage("Удалить фотографию профиля"),
        "avatar_delete_confirmation": MessageLookupByLibrary.simpleMessage(
            "Вы действительно хотите удалить фото профиля?"),
        "avatar_edit": MessageLookupByLibrary.simpleMessage(
            "Редактирование фотографии профиля"),
        "backButtonTooltip": MessageLookupByLibrary.simpleMessage("Назад"),
        "billing": MessageLookupByLibrary.simpleMessage("Биллинг"),
        "bio": MessageLookupByLibrary.simpleMessage("Важное обо мне"),
        "biometry": MessageLookupByLibrary.simpleMessage("Биометрия"),
        "biometryConnect": MessageLookupByLibrary.simpleMessage(
            "Подключите биометрию\nДля безопасного и удобного входа в приложение"),
        "biometrySettingsWhere": MessageLookupByLibrary.simpleMessage(
            "Вы можете настроить вход по биометрии в разделе «Профиль»"),
        "birthday": MessageLookupByLibrary.simpleMessage("Дата рождения"),
        "birthday_placeholder":
            MessageLookupByLibrary.simpleMessage("Введите дату"),
        "blog": MessageLookupByLibrary.simpleMessage("Блог"),
        "booked": MessageLookupByLibrary.simpleMessage("Забронировано"),
        "byProceedingYouAgreeToThe": MessageLookupByLibrary.simpleMessage(
            "Нажимая «Продолжить», вы принимаете "),
        "call_creating_message": MessageLookupByLibrary.simpleMessage(
            "Комната в процессе создания.\nПовторите попытку позже"),
        "call_exit_warning": MessageLookupByLibrary.simpleMessage(
            "Выход приведет к выходу из сессии. Если сессия активна, вы сможете войти в неё снова.\nВы действительно хотите выйти?"),
        "call_link_configuration_failed": MessageLookupByLibrary.simpleMessage(
            "Произошла ошибка при создании ссылки.\nВозможно сеанс еще не начался."),
        "call_session_over": MessageLookupByLibrary.simpleMessage(
            "Сессия с психологом завершена"),
        "cancel": MessageLookupByLibrary.simpleMessage("Отмена"),
        "cancel_entry": MessageLookupByLibrary.simpleMessage("Отменить запись"),
        "cancel_session_header_popup":
            MessageLookupByLibrary.simpleMessage("Вы хотите отменить запись?"),
        "cancel_warning_24_hours": MessageLookupByLibrary.simpleMessage(
            "Если сессия отменена менее чем за 24 часа до начала, средства не будут возвращены на ваш счет."),
        "cancel_warning_24_hours_popup": MessageLookupByLibrary.simpleMessage(
            "Если до отмены записи осталось менее 24 часов, потраченные деньги за сессию возврату не подлежат"),
        "change_date": MessageLookupByLibrary.simpleMessage("Сменить дату"),
        "chats": MessageLookupByLibrary.simpleMessage("Чаты"),
        "chatsPlaceholder": MessageLookupByLibrary.simpleMessage(
            "Здесь вы можете поддерживать связь со своим психологом или обращаться за помощью в чат поддержки"),
        "choosePsych":
            MessageLookupByLibrary.simpleMessage("Выбрать психолога"),
        "close": MessageLookupByLibrary.simpleMessage("Закрыть"),
        "codeIsRequiredToProtectData": MessageLookupByLibrary.simpleMessage(
            "Код нужен, чтобы защитить ваши данные"),
        "codeSentToPhone": m2,
        "confirmation": MessageLookupByLibrary.simpleMessage("Подтверждение"),
        "connect": MessageLookupByLibrary.simpleMessage("Подключить"),
        "contactSupport":
            MessageLookupByLibrary.simpleMessage("Обратиться в поддержку"),
        "createForm": MessageLookupByLibrary.simpleMessage("Начать новую"),
        "date_of_the_event":
            MessageLookupByLibrary.simpleMessage("Дата проведения"),
        "deleteCard": MessageLookupByLibrary.simpleMessage("Удалить карту"),
        "discount": MessageLookupByLibrary.simpleMessage("Скидка"),
        "discount_expires_description": MessageLookupByLibrary.simpleMessage(
            "Успей использовать скидку на первый сеанс с психологом по сниженной цене."),
        "discount_expires_soon": m3,
        "discount_for_questionnaire": MessageLookupByLibrary.simpleMessage(
            "Скидка за прохождение анкеты"),
        "discount_for_registration":
            MessageLookupByLibrary.simpleMessage("Скидка за регистрацию"),
        "documents": MessageLookupByLibrary.simpleMessage("Документы"),
        "drop": MessageLookupByLibrary.simpleMessage("Сбросить"),
        "e_checkInput": MessageLookupByLibrary.simpleMessage("Проверьте ввод"),
        "e_insufficientFunds":
            MessageLookupByLibrary.simpleMessage("Недостаточно средств"),
        "e_invalidCode":
            MessageLookupByLibrary.simpleMessage("Код недействителен"),
        "e_invalidConfirmationCode":
            MessageLookupByLibrary.simpleMessage("Введен неверный код"),
        "e_noConnection":
            MessageLookupByLibrary.simpleMessage("Нет соединения"),
        "e_noConnectionDescription":
            MessageLookupByLibrary.simpleMessage("Проверьте настройки сети"),
        "e_nonMatchingCodes":
            MessageLookupByLibrary.simpleMessage("Коды не совпадают"),
        "e_requestAgain":
            MessageLookupByLibrary.simpleMessage("Запросить код повторно"),
        "e_requestInSomeTime": m4,
        "e_serverErrorTryAgainLater": MessageLookupByLibrary.simpleMessage(
            "Ошибка сервера. Попробуйте позже"),
        "e_smthWentWrong":
            MessageLookupByLibrary.simpleMessage("Что-то пошло не так"),
        "e_tooManyInvalidCodeAttempts": MessageLookupByLibrary.simpleMessage(
            "Слишком много неверных попыток, запросите новый код и попробуйте снова"),
        "e_tooManyRequestsTryAgainLater": MessageLookupByLibrary.simpleMessage(
            "Количество запросов превышено. Попробуйте позже"),
        "e_tryAgain": MessageLookupByLibrary.simpleMessage(
            "Произошла ошибка. Повторите попытку позже"),
        "e_valueExist": m5,
        "editForm": MessageLookupByLibrary.simpleMessage("Уточнить"),
        "editFormGuide": MessageLookupByLibrary.simpleMessage(
            "Продолжите заполнение нажав «Уточнить» или начните новую анкету."),
        "education": MessageLookupByLibrary.simpleMessage("Образование"),
        "email_description": MessageLookupByLibrary.simpleMessage(
            "Email может быть использован для информирования психотерапевта и для возможности восстановления доступа к аккаунту."),
        "email_placeholder":
            MessageLookupByLibrary.simpleMessage("Введите email"),
        "emptyChatLastMessage": MessageLookupByLibrary.simpleMessage(
            "Ещё не было сообщений. Начните диалог первым!"),
        "empty_appointment_history": MessageLookupByLibrary.simpleMessage(
            "Вы еще не были на сеансе с психологом"),
        "empty_appointment_history_description":
            MessageLookupByLibrary.simpleMessage(
                "Запишитесь на первую сессию, после этого история станет доступна в этом разделе"),
        "empty_my_therapists":
            MessageLookupByLibrary.simpleMessage("У вас еще нет психологов"),
        "empty_my_therapists_description": MessageLookupByLibrary.simpleMessage(
            "Запишитесь на первую сессию, после этого психологи станут доступны в этом разделе"),
        "empty_slots_description": MessageLookupByLibrary.simpleMessage(
            "В данный момент все записи у этого психолога заняты."),
        "empty_slots_error": MessageLookupByLibrary.simpleMessage(
            "Нет доступного времени для записи"),
        "empty_slots_on_detail": MessageLookupByLibrary.simpleMessage(
            "У данного психотерапевта в данный момент нет свободных окон"),
        "empty_therapists": MessageLookupByLibrary.simpleMessage(
            "В данный момент не удалось найти подходящего специалиста"),
        "empty_therapists_description": MessageLookupByLibrary.simpleMessage(
            "Попробуйте снизить критерии \nили попробуйте позже"),
        "empty_upcoming_appointments": MessageLookupByLibrary.simpleMessage(
            "В данный момент предстоящих сеансов нет"),
        "empty_upcoming_appointments_description":
            MessageLookupByLibrary.simpleMessage(
                "Запишитесь на новую сессию, после этого вы увидите предстоящие сеансы"),
        "enroll": MessageLookupByLibrary.simpleMessage("Записаться"),
        "error": MessageLookupByLibrary.simpleMessage("Ошибка"),
        "error_occurred":
            MessageLookupByLibrary.simpleMessage("Возникла ошибка"),
        "evening": MessageLookupByLibrary.simpleMessage("Вечер"),
        "exit_warning": MessageLookupByLibrary.simpleMessage(
            "Вы действительно хотите выйти из приложения «MOST»?"),
        "expandable_count": m6,
        "experienceFew": MessageLookupByLibrary.simpleMessage("года"),
        "experienceOne": MessageLookupByLibrary.simpleMessage("год"),
        "experienceOther": MessageLookupByLibrary.simpleMessage("лет"),
        "experienceZero": MessageLookupByLibrary.simpleMessage("Нет опыта"),
        "faceId": MessageLookupByLibrary.simpleMessage("Face ID"),
        "faceIdConnect": MessageLookupByLibrary.simpleMessage(
            "Подключите Face ID\nДля безопасного и удобного входа в приложение"),
        "faceIdSettingsWhere": MessageLookupByLibrary.simpleMessage(
            "Вы можете настроить вход по Face ID в разделе «Профиль»"),
        "file": MessageLookupByLibrary.simpleMessage("Файл"),
        "filters": MessageLookupByLibrary.simpleMessage("Фильтры"),
        "first_appointment_discount": m7,
        "first_appointment_discount_description":
            MessageLookupByLibrary.simpleMessage(
                "Действует в течении первых 2 часов после регистрации"),
        "forContinueEnterPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "Для продолжения – введите номер телефона"),
        "forCouple": MessageLookupByLibrary.simpleMessage("Парная"),
        "forMe": MessageLookupByLibrary.simpleMessage("Для меня"),
        "forPair": MessageLookupByLibrary.simpleMessage("для пары"),
        "form": MessageLookupByLibrary.simpleMessage("Анкета"),
        "fromPrice": m8,
        "fromPriceToPriceAnother": m9,
        "good": MessageLookupByLibrary.simpleMessage("Хорошо"),
        "hide": MessageLookupByLibrary.simpleMessage("Скрыть"),
        "history": MessageLookupByLibrary.simpleMessage("История"),
        "individual": MessageLookupByLibrary.simpleMessage("индивидуальная"),
        "inputCode": MessageLookupByLibrary.simpleMessage("Введите код"),
        "inputHint": MessageLookupByLibrary.simpleMessage("Ваше сообщение"),
        "interesting_articles":
            MessageLookupByLibrary.simpleMessage("Интересные статьи"),
        "logOut": MessageLookupByLibrary.simpleMessage("Выход"),
        "logout_confirmation": MessageLookupByLibrary.simpleMessage(
            "Вы действительно хотите выйти из приложения?"),
        "mainSpecialization_acceptance_and_responsibility_therapy":
            MessageLookupByLibrary.simpleMessage(
                "Терапия принятия и ответственности"),
        "mainSpecialization_art_therapy":
            MessageLookupByLibrary.simpleMessage("Арт-терапия"),
        "mainSpecialization_body_oriented_therapy":
            MessageLookupByLibrary.simpleMessage(
                "Телесно-ориентированная психотерапия"),
        "mainSpecialization_client_centered_therapy":
            MessageLookupByLibrary.simpleMessage(
                "Клиент-центрированная психотерапия"),
        "mainSpecialization_cognitive_behavioral_therapy":
            MessageLookupByLibrary.simpleMessage(
                "Когнитивно-поведенческая терапия"),
        "mainSpecialization_dbd": MessageLookupByLibrary.simpleMessage("DBD"),
        "mainSpecialization_emdr": MessageLookupByLibrary.simpleMessage("EMDR"),
        "mainSpecialization_emotional_image_therapy":
            MessageLookupByLibrary.simpleMessage(
                "Эмоционально-образная терапия"),
        "mainSpecialization_existential_analysis":
            MessageLookupByLibrary.simpleMessage("Экзистенциальный анализ"),
        "mainSpecialization_existential_psychotherapy":
            MessageLookupByLibrary.simpleMessage(
                "Экзистенциальная психотерапия"),
        "mainSpecialization_gestalt_therapy":
            MessageLookupByLibrary.simpleMessage("Гештальт-терапия"),
        "mainSpecialization_hypnosis":
            MessageLookupByLibrary.simpleMessage("Гипноз"),
        "mainSpecialization_integrative_therapy":
            MessageLookupByLibrary.simpleMessage("Интегративная терапия"),
        "mainSpecialization_jungian_analysis":
            MessageLookupByLibrary.simpleMessage("Юнгианский анализ"),
        "mainSpecialization_narrative_therapy":
            MessageLookupByLibrary.simpleMessage("Нарративная терапия"),
        "mainSpecialization_process_therapy":
            MessageLookupByLibrary.simpleMessage("Процессуальная терапия"),
        "mainSpecialization_psychoanalytic_therapy":
            MessageLookupByLibrary.simpleMessage("Процессуальная терапия"),
        "mainSpecialization_psychodrama":
            MessageLookupByLibrary.simpleMessage("Психодрама"),
        "mainSpecialization_schema_therapy":
            MessageLookupByLibrary.simpleMessage("Схема-терапия"),
        "mainSpecialization_symbolic_drama":
            MessageLookupByLibrary.simpleMessage("Символдрама"),
        "mainSpecialization_systemic_family_therapy":
            MessageLookupByLibrary.simpleMessage("Системная семейная терапия"),
        "mainSpecialization_transactional_analysis":
            MessageLookupByLibrary.simpleMessage("Транзактный анализ"),
        "mine": MessageLookupByLibrary.simpleMessage("Мои"),
        "minutes": MessageLookupByLibrary.simpleMessage("минут"),
        "minutes_short": MessageLookupByLibrary.simpleMessage("мин."),
        "moreWithDots": MessageLookupByLibrary.simpleMessage("Ещё..."),
        "morning": MessageLookupByLibrary.simpleMessage("Утро"),
        "name": MessageLookupByLibrary.simpleMessage("Имя"),
        "needToLoginWithBiometrics": MessageLookupByLibrary.simpleMessage(
            "Необходимо войти с помощью биометрии"),
        "no": MessageLookupByLibrary.simpleMessage("Нет"),
        "noAccessToPhone":
            MessageLookupByLibrary.simpleMessage("Нет доступа к номеру?"),
        "no_photo": MessageLookupByLibrary.simpleMessage("без фото"),
        "nothing_found":
            MessageLookupByLibrary.simpleMessage("Ничего не надено"),
        "notification": MessageLookupByLibrary.simpleMessage("Уведомления"),
        "notifications_appointment_description":
            MessageLookupByLibrary.simpleMessage(
                "Получать информацию о создании записей, действии над ними: изменениями, переносе или отмене записей. Получать уведомления о предстоящей сессии."),
        "notifications_appointment_starts_description":
            MessageLookupByLibrary.simpleMessage(
                "Получать уведомления за 15 минут до начала сеанса"),
        "notifications_appointment_starts_title":
            MessageLookupByLibrary.simpleMessage("Уведомлять о начале сеанса"),
        "notifications_appointment_title":
            MessageLookupByLibrary.simpleMessage("Уведомлять о записях"),
        "notifications_conversation_messages_description":
            MessageLookupByLibrary.simpleMessage(
                "Получать уведомления о сообщениях в чате"),
        "notifications_conversation_messages_title":
            MessageLookupByLibrary.simpleMessage(
                "Уведомлять о сообщениях в чатах"),
        "notify_by_email": MessageLookupByLibrary.simpleMessage(
            "Уведомлять по электронной почте"),
        "notify_by_sms":
            MessageLookupByLibrary.simpleMessage("Уведомлять по SMS"),
        "ok": MessageLookupByLibrary.simpleMessage("Понятно"),
        "old_price": MessageLookupByLibrary.simpleMessage("Старая цена:"),
        "open_a_chat":
            MessageLookupByLibrary.simpleMessage("Открыть чат с психологом"),
        "otherPublications":
            MessageLookupByLibrary.simpleMessage("Другие публикации..."),
        "pay": MessageLookupByLibrary.simpleMessage("Оплатить"),
        "payment": MessageLookupByLibrary.simpleMessage("Оплата"),
        "payments": MessageLookupByLibrary.simpleMessage("Платежи и карты"),
        "paymentsAndCards":
            MessageLookupByLibrary.simpleMessage("Платежи и карты"),
        "personal_info":
            MessageLookupByLibrary.simpleMessage("Персональные данные"),
        "phone": MessageLookupByLibrary.simpleMessage("Телефон"),
        "phone_changing_description": MessageLookupByLibrary.simpleMessage(
            "Вы можете изменить номер телефона на новый, который будет привязан к Вашему аккаунту взамен прежнего"),
        "phone_description": MessageLookupByLibrary.simpleMessage(
            "Номер телефона используется для авторизации пользователя в системе и для связи команды поддержки с психотерапевтом."),
        "photo": MessageLookupByLibrary.simpleMessage("Фотографии"),
        "pleaseSetUpPinCode": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста, придумайте код для входа в приложение"),
        "pricePerHour": m10,
        "price_with_discount":
            MessageLookupByLibrary.simpleMessage("Стоимость со скидкой:"),
        "principleOfOperation":
            MessageLookupByLibrary.simpleMessage("Принципы работы"),
        "privacyNotice": MessageLookupByLibrary.simpleMessage(
            "согласие на обработку персональных данных"),
        "proceed": MessageLookupByLibrary.simpleMessage("Продолжить"),
        "profile": MessageLookupByLibrary.simpleMessage("Профиль"),
        "receipt": MessageLookupByLibrary.simpleMessage("Квитанция"),
        "receipt_not_ready":
            MessageLookupByLibrary.simpleMessage("Квитанция пока не готова"),
        "receive_sms_code":
            MessageLookupByLibrary.simpleMessage("Получить код"),
        "refund": MessageLookupByLibrary.simpleMessage("Возврат средств"),
        "repeatCode": MessageLookupByLibrary.simpleMessage("Повторите код"),
        "reschedule_session":
            MessageLookupByLibrary.simpleMessage("Перенести сеанс"),
        "restore_image_confirmation": MessageLookupByLibrary.simpleMessage(
            "Есть утерянные файлы. Восстановить?"),
        "save": MessageLookupByLibrary.simpleMessage("Сохранить"),
        "searchMessagesButtonTooltip":
            MessageLookupByLibrary.simpleMessage("Поиск сообщений"),
        "search_results_hint": MessageLookupByLibrary.simpleMessage(
            "Здесь появятся результаты поиска"),
        "selectDate": MessageLookupByLibrary.simpleMessage("Выберите дату"),
        "select_from_gallery":
            MessageLookupByLibrary.simpleMessage("Выбрать фото"),
        "sessionPayment": MessageLookupByLibrary.simpleMessage("Оплата сеанса"),
        "session_call_tip": MessageLookupByLibrary.simpleMessage(
            "Перейдите на вкладку сеансов, чтобы не пропустить видеозвонок"),
        "session_class": MessageLookupByLibrary.simpleMessage("Тип сессии"),
        "session_connect":
            MessageLookupByLibrary.simpleMessage("Присоединиться"),
        "session_date": MessageLookupByLibrary.simpleMessage("Дата сеанса"),
        "session_date_error_description": MessageLookupByLibrary.simpleMessage(
            "На эту дату нет свободных временных промежутков"),
        "session_duration_is": MessageLookupByLibrary.simpleMessage(
            "Длительность сеанса составляет"),
        "session_end_time":
            MessageLookupByLibrary.simpleMessage("Время завершения сессии"),
        "session_info":
            MessageLookupByLibrary.simpleMessage("Сведения о сессии"),
        "session_payment":
            MessageLookupByLibrary.simpleMessage("Оплата сессии"),
        "session_payment_error_description": MessageLookupByLibrary.simpleMessage(
            "К сожалению, мы не смогли провести оплату вашего сеанса, попробуйте снова или обратитесь в тех. поддержку"),
        "session_price":
            MessageLookupByLibrary.simpleMessage("Стоимость сессии"),
        "session_start_time":
            MessageLookupByLibrary.simpleMessage("Время начала сессии"),
        "session_successfully_paid":
            MessageLookupByLibrary.simpleMessage("Сеанс успешно оплачен"),
        "session_time": MessageLookupByLibrary.simpleMessage("Время сеанса"),
        "session_type": MessageLookupByLibrary.simpleMessage("Тип сессии"),
        "sessions": MessageLookupByLibrary.simpleMessage("Сеансы"),
        "setUpCode": MessageLookupByLibrary.simpleMessage("Придумайте код"),
        "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
        "sex": MessageLookupByLibrary.simpleMessage("Пол"),
        "sex_female": MessageLookupByLibrary.simpleMessage("Женский"),
        "sex_male": MessageLookupByLibrary.simpleMessage("Мужской"),
        "sex_other": MessageLookupByLibrary.simpleMessage("Другое"),
        "sex_placeholder": MessageLookupByLibrary.simpleMessage("Укажите пол"),
        "skip": MessageLookupByLibrary.simpleMessage("Пропустить"),
        "smsCode": MessageLookupByLibrary.simpleMessage("СМС-код"),
        "success": MessageLookupByLibrary.simpleMessage("Успешно"),
        "surname": MessageLookupByLibrary.simpleMessage("Фамилия"),
        "take_a_photo": MessageLookupByLibrary.simpleMessage("Снять фото"),
        "technical_support":
            MessageLookupByLibrary.simpleMessage("Техническая поддержка"),
        "termsOfService": MessageLookupByLibrary.simpleMessage(
            "условия пользовательского соглашения"),
        "therapist": MessageLookupByLibrary.simpleMessage("Психолог"),
        "therapist_age":
            MessageLookupByLibrary.simpleMessage("Возраст терапевта"),
        "therapist_countFew": MessageLookupByLibrary.simpleMessage("психолога"),
        "therapist_countMany":
            MessageLookupByLibrary.simpleMessage("психологов"),
        "therapist_countOne": MessageLookupByLibrary.simpleMessage("психолог"),
        "therapist_gender":
            MessageLookupByLibrary.simpleMessage("Пол терапевта"),
        "therapists": MessageLookupByLibrary.simpleMessage("Психологи"),
        "therapy_for_couple":
            MessageLookupByLibrary.simpleMessage("Парная терапия"),
        "therapy_for_me":
            MessageLookupByLibrary.simpleMessage("Терапия для меня"),
        "toPrice": m11,
        "today": MessageLookupByLibrary.simpleMessage("Сегодня"),
        "touchId": MessageLookupByLibrary.simpleMessage("Touch ID"),
        "touchIdConnect": MessageLookupByLibrary.simpleMessage(
            "Подключите Touch ID\nДля безопасного и удобного входа в приложение"),
        "touchIdSettingsWhere": MessageLookupByLibrary.simpleMessage(
            "Вы можете настроить вход по Touch ID в разделе «Профиль»"),
        "try_again":
            MessageLookupByLibrary.simpleMessage("Попробовать ещё раз"),
        "try_again_description": MessageLookupByLibrary.simpleMessage(
            "Попробуйте обновить данные снова или обратиться в техническую поддержку."),
        "typing": MessageLookupByLibrary.simpleMessage("Печатает..."),
        "unavailable": MessageLookupByLibrary.simpleMessage("Недоступно"),
        "upcoming": MessageLookupByLibrary.simpleMessage("Предстоящие"),
        "useByDefault":
            MessageLookupByLibrary.simpleMessage("Использовать по умолч."),
        "user_info": MessageLookupByLibrary.simpleMessage("Сведения"),
        "welcome": MessageLookupByLibrary.simpleMessage("Добро пожаловать"),
        "whatTherapyYouNeed":
            MessageLookupByLibrary.simpleMessage("Какая терапия Вам нужна?"),
        "workInProgress": MessageLookupByLibrary.simpleMessage(
            "Страница находится в разработке"),
        "work_experience": MessageLookupByLibrary.simpleMessage("Опыт работы"),
        "yes": MessageLookupByLibrary.simpleMessage("Да"),
        "yesterday": MessageLookupByLibrary.simpleMessage("Вчера"),
        "yourForm": MessageLookupByLibrary.simpleMessage("Ваша анкета"),
        "your_email": MessageLookupByLibrary.simpleMessage("Ваш Email"),
        "your_phone":
            MessageLookupByLibrary.simpleMessage("Ваш номер телефона"),
        "your_questionnaire":
            MessageLookupByLibrary.simpleMessage("Ваша анкета")
      };
}
