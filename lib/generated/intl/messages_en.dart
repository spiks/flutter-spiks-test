// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(length) => "You have viewed all articles (${length})";

  static String m1(length) => "You have viewed all therapists (${length})";

  static String m2(phone) => "Code sent to\n${phone}";

  static String m3(minutes) => "${minutes} minutes left!";

  static String m4(timerValue) => "Request in ${timerValue}";

  static String m5(value) => "${value} already exists";

  static String m6(value) => "And ${value} more";

  static String m7(discount) => "Discount ${discount}% for the first session";

  static String m8(price) => "From ${price} ₽";

  static String m9(price, priceAnother) => "From ${price} to ${priceAnother} ₽";

  static String m10(price) => "${price} ₽/hour";

  static String m11(price) => "To ${price} ₽";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addCaption": MessageLookupByLibrary.simpleMessage("Add a caption..."),
        "addDocument": MessageLookupByLibrary.simpleMessage("Add document"),
        "addNewCard": MessageLookupByLibrary.simpleMessage("New card"),
        "addPhoto": MessageLookupByLibrary.simpleMessage("Add photo"),
        "afternoon": MessageLookupByLibrary.simpleMessage("Afternoon"),
        "all": MessageLookupByLibrary.simpleMessage("All"),
        "all_articles_viewed": m0,
        "all_therapists_viewed": m1,
        "andGive": MessageLookupByLibrary.simpleMessage(" and "),
        "anotherPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Another phone number"),
        "apply": MessageLookupByLibrary.simpleMessage("Apply"),
        "apply_filters": MessageLookupByLibrary.simpleMessage("Apply filters"),
        "appointment_has_been_cancelled": MessageLookupByLibrary.simpleMessage(
            "Appointment has been cancelled"),
        "appointment_has_been_moved":
            MessageLookupByLibrary.simpleMessage("Appointment has been moved"),
        "appointment_started":
            MessageLookupByLibrary.simpleMessage("Appointment started"),
        "appointment_starts_in_5_minutes": MessageLookupByLibrary.simpleMessage(
            "Appointment will start in 5 minutes"),
        "appointments": MessageLookupByLibrary.simpleMessage("Appointments"),
        "attachments": MessageLookupByLibrary.simpleMessage("Attachments"),
        "author": MessageLookupByLibrary.simpleMessage("Author"),
        "avatar_delete":
            MessageLookupByLibrary.simpleMessage("Delete profile picture"),
        "avatar_delete_confirmation": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete your profile photo?"),
        "avatar_edit":
            MessageLookupByLibrary.simpleMessage("Editing a profile picture"),
        "backButtonTooltip": MessageLookupByLibrary.simpleMessage("Back"),
        "billing": MessageLookupByLibrary.simpleMessage("Billing"),
        "bio": MessageLookupByLibrary.simpleMessage("Bio"),
        "biometry": MessageLookupByLibrary.simpleMessage("Biometrics"),
        "biometryConnect": MessageLookupByLibrary.simpleMessage(
            "Connect biometrics\nFor safe and comfortable login"),
        "biometrySettingsWhere": MessageLookupByLibrary.simpleMessage(
            "You can configure login by biometrics in \'Profile\' Section"),
        "birthday": MessageLookupByLibrary.simpleMessage("Birthday"),
        "birthday_placeholder":
            MessageLookupByLibrary.simpleMessage("Enter your birthday"),
        "blog": MessageLookupByLibrary.simpleMessage("Blog"),
        "booked": MessageLookupByLibrary.simpleMessage("Booked"),
        "byProceedingYouAgreeToThe": MessageLookupByLibrary.simpleMessage(
            "By proceeding you agree to the "),
        "call_creating_message": MessageLookupByLibrary.simpleMessage(
            "Room in the creating process.\nPlease try again later"),
        "call_exit_warning": MessageLookupByLibrary.simpleMessage(
            "Logging out will log you out of the session. If the session is active, you will be able to log into it again.\nDo you really want to leave?"),
        "call_link_configuration_failed": MessageLookupByLibrary.simpleMessage(
            "An error occurred while creating the link.\nThe session may not have started yet."),
        "call_session_over": MessageLookupByLibrary.simpleMessage(
            "The session with the psychologist is over"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cancel_entry": MessageLookupByLibrary.simpleMessage("Cancel entry"),
        "cancel_session_header_popup": MessageLookupByLibrary.simpleMessage(
            "Do you want to cancel your appointment?"),
        "cancel_warning_24_hours": MessageLookupByLibrary.simpleMessage(
            "Session session canceled less than 24 hours before the start, funds will not be returned to your account."),
        "cancel_warning_24_hours_popup": MessageLookupByLibrary.simpleMessage(
            "If less than 24 hours are left before the cancellation of the recording, the money spent for the session is not refundable"),
        "change_date": MessageLookupByLibrary.simpleMessage("Change date"),
        "chats": MessageLookupByLibrary.simpleMessage("Chats"),
        "chatsPlaceholder": MessageLookupByLibrary.simpleMessage(
            "Here you can keep in touch with your psychologist or ask for help in the support chat"),
        "choosePsych":
            MessageLookupByLibrary.simpleMessage("Choose a therapist"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "codeIsRequiredToProtectData": MessageLookupByLibrary.simpleMessage(
            "Code is required to protect your data"),
        "codeSentToPhone": m2,
        "confirmation": MessageLookupByLibrary.simpleMessage("Confirm"),
        "connect": MessageLookupByLibrary.simpleMessage("Connect"),
        "contactSupport":
            MessageLookupByLibrary.simpleMessage("Contact support"),
        "createForm": MessageLookupByLibrary.simpleMessage("Create"),
        "date_of_the_event":
            MessageLookupByLibrary.simpleMessage("Date of the event"),
        "deleteCard": MessageLookupByLibrary.simpleMessage("Delete card"),
        "discount": MessageLookupByLibrary.simpleMessage("Discount"),
        "discount_expires_description": MessageLookupByLibrary.simpleMessage(
            "Hurry up to use the discount on the first session with a psychologist at a reduced price."),
        "discount_expires_soon": m3,
        "discount_for_questionnaire": MessageLookupByLibrary.simpleMessage(
            "Discount for completing the questionnaire"),
        "discount_for_registration":
            MessageLookupByLibrary.simpleMessage("Discount for registration"),
        "documents": MessageLookupByLibrary.simpleMessage("Documents"),
        "drop": MessageLookupByLibrary.simpleMessage("Drop"),
        "e_checkInput": MessageLookupByLibrary.simpleMessage("Check input"),
        "e_insufficientFunds":
            MessageLookupByLibrary.simpleMessage("Insufficient funds"),
        "e_invalidCode": MessageLookupByLibrary.simpleMessage("Invalid code"),
        "e_invalidConfirmationCode":
            MessageLookupByLibrary.simpleMessage("Invalid confirmation code"),
        "e_noConnection": MessageLookupByLibrary.simpleMessage("No connection"),
        "e_noConnectionDescription":
            MessageLookupByLibrary.simpleMessage("Check network settings"),
        "e_nonMatchingCodes":
            MessageLookupByLibrary.simpleMessage("Entered codes don\'t match"),
        "e_requestAgain":
            MessageLookupByLibrary.simpleMessage("Request code again"),
        "e_requestInSomeTime": m4,
        "e_serverErrorTryAgainLater": MessageLookupByLibrary.simpleMessage(
            "Server Error. Try again later"),
        "e_smthWentWrong":
            MessageLookupByLibrary.simpleMessage("Something went wrong"),
        "e_tooManyInvalidCodeAttempts": MessageLookupByLibrary.simpleMessage(
            "Too many attempts, please try again later."),
        "e_tooManyRequestsTryAgainLater": MessageLookupByLibrary.simpleMessage(
            "Too Many Requests. Try again later"),
        "e_tryAgain": MessageLookupByLibrary.simpleMessage(
            "An error has occurred. Try again later"),
        "e_valueExist": m5,
        "editForm": MessageLookupByLibrary.simpleMessage("Edit"),
        "editFormGuide": MessageLookupByLibrary.simpleMessage(
            "Continue filling form by \"Edit\" or create new form."),
        "education": MessageLookupByLibrary.simpleMessage("Education"),
        "email_description": MessageLookupByLibrary.simpleMessage(
            "Email can be used to inform the therapist and to be able to restore access to the account."),
        "email_placeholder":
            MessageLookupByLibrary.simpleMessage("Enter email"),
        "emptyChatLastMessage": MessageLookupByLibrary.simpleMessage(
            "No messages here yet...\nSend first message!"),
        "empty_appointment_history": MessageLookupByLibrary.simpleMessage(
            "You haven\'t been to a session yet with a psychologist"),
        "empty_appointment_history_description":
            MessageLookupByLibrary.simpleMessage(
                "Sign up for the first session, after that the story will be available in this section"),
        "empty_my_therapists": MessageLookupByLibrary.simpleMessage(
            "You don\'t have any psychologists yet"),
        "empty_my_therapists_description": MessageLookupByLibrary.simpleMessage(
            "Sign up for the first session, after that psychologists will be available in this section"),
        "empty_slots_description": MessageLookupByLibrary.simpleMessage(
            "At the moment, all the records of this psychologist are occupied."),
        "empty_slots_error": MessageLookupByLibrary.simpleMessage(
            "No time available for recording"),
        "empty_slots_on_detail": MessageLookupByLibrary.simpleMessage(
            "This therapist has no free slots at the moment"),
        "empty_therapists": MessageLookupByLibrary.simpleMessage(
            "Unable to find a suitable therapist at the moment"),
        "empty_therapists_description": MessageLookupByLibrary.simpleMessage(
            "Try lower criteria \nor try again later"),
        "empty_upcoming_appointments": MessageLookupByLibrary.simpleMessage(
            "There are currently no upcoming sessions"),
        "empty_upcoming_appointments_description":
            MessageLookupByLibrary.simpleMessage(
                "Sign up for a new session, after that you will see upcoming sessions"),
        "enroll": MessageLookupByLibrary.simpleMessage("Enroll"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "error_occurred":
            MessageLookupByLibrary.simpleMessage("Error occurred"),
        "evening": MessageLookupByLibrary.simpleMessage("Evening"),
        "exit_warning": MessageLookupByLibrary.simpleMessage(
            "Do you really want to exit the «MOST» application?"),
        "expandable_count": m6,
        "experienceFew": MessageLookupByLibrary.simpleMessage("years"),
        "experienceOne": MessageLookupByLibrary.simpleMessage("year"),
        "experienceOther": MessageLookupByLibrary.simpleMessage("years"),
        "experienceZero": MessageLookupByLibrary.simpleMessage("No experience"),
        "faceId": MessageLookupByLibrary.simpleMessage("Face ID"),
        "faceIdConnect": MessageLookupByLibrary.simpleMessage(
            "Connect Face ID\nFor safe and comfortable login"),
        "faceIdSettingsWhere": MessageLookupByLibrary.simpleMessage(
            "You can configure login by Face ID in \'Profile\' Section"),
        "file": MessageLookupByLibrary.simpleMessage("File"),
        "filters": MessageLookupByLibrary.simpleMessage("Filters"),
        "first_appointment_discount": m7,
        "first_appointment_discount_description":
            MessageLookupByLibrary.simpleMessage(
                "Valid for the first 2 hours after registration"),
        "forContinueEnterPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "Enter phone number to proceed"),
        "forCouple": MessageLookupByLibrary.simpleMessage("Couple"),
        "forMe": MessageLookupByLibrary.simpleMessage("Individual"),
        "forPair": MessageLookupByLibrary.simpleMessage("for couple"),
        "form": MessageLookupByLibrary.simpleMessage("Form"),
        "fromPrice": m8,
        "fromPriceToPriceAnother": m9,
        "good": MessageLookupByLibrary.simpleMessage("Good"),
        "hide": MessageLookupByLibrary.simpleMessage("Hide"),
        "history": MessageLookupByLibrary.simpleMessage("History"),
        "individual": MessageLookupByLibrary.simpleMessage("individual"),
        "inputCode": MessageLookupByLibrary.simpleMessage("Input code"),
        "inputHint": MessageLookupByLibrary.simpleMessage("Message"),
        "interesting_articles":
            MessageLookupByLibrary.simpleMessage("Interesting articles"),
        "logOut": MessageLookupByLibrary.simpleMessage("Logout"),
        "logout_confirmation": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to exit the app?"),
        "mainSpecialization_acceptance_and_responsibility_therapy":
            MessageLookupByLibrary.simpleMessage(
                "Acceptance and Responsibility Therapy"),
        "mainSpecialization_art_therapy":
            MessageLookupByLibrary.simpleMessage("Art Therapy"),
        "mainSpecialization_body_oriented_therapy":
            MessageLookupByLibrary.simpleMessage("Body Oriented Therapy"),
        "mainSpecialization_client_centered_therapy":
            MessageLookupByLibrary.simpleMessage("Client Centered Therapy"),
        "mainSpecialization_cognitive_behavioral_therapy":
            MessageLookupByLibrary.simpleMessage(
                "Cognitive Behavioral Therapy"),
        "mainSpecialization_dbd": MessageLookupByLibrary.simpleMessage("DBD"),
        "mainSpecialization_emdr": MessageLookupByLibrary.simpleMessage("EMDR"),
        "mainSpecialization_emotional_image_therapy":
            MessageLookupByLibrary.simpleMessage("Emotional Image Therapy"),
        "mainSpecialization_existential_analysis":
            MessageLookupByLibrary.simpleMessage("Existential Analysis"),
        "mainSpecialization_existential_psychotherapy":
            MessageLookupByLibrary.simpleMessage("Existential Psychotherapy"),
        "mainSpecialization_gestalt_therapy":
            MessageLookupByLibrary.simpleMessage("Gestalt Therapy"),
        "mainSpecialization_hypnosis":
            MessageLookupByLibrary.simpleMessage("Hypnosis"),
        "mainSpecialization_integrative_therapy":
            MessageLookupByLibrary.simpleMessage("Integrative Therapy"),
        "mainSpecialization_jungian_analysis":
            MessageLookupByLibrary.simpleMessage("Jungian Analysis"),
        "mainSpecialization_narrative_therapy":
            MessageLookupByLibrary.simpleMessage("Narrative Therapy"),
        "mainSpecialization_process_therapy":
            MessageLookupByLibrary.simpleMessage("Process Therapy"),
        "mainSpecialization_psychoanalytic_therapy":
            MessageLookupByLibrary.simpleMessage("Procedural Therapy"),
        "mainSpecialization_psychodrama":
            MessageLookupByLibrary.simpleMessage("Psychodrama"),
        "mainSpecialization_schema_therapy":
            MessageLookupByLibrary.simpleMessage("Schema Therapy"),
        "mainSpecialization_symbolic_drama":
            MessageLookupByLibrary.simpleMessage("Symbol Drama"),
        "mainSpecialization_systemic_family_therapy":
            MessageLookupByLibrary.simpleMessage("Systemic family therapy"),
        "mainSpecialization_transactional_analysis":
            MessageLookupByLibrary.simpleMessage("Transactional Analysis"),
        "mine": MessageLookupByLibrary.simpleMessage("Mine"),
        "minutes": MessageLookupByLibrary.simpleMessage("minutes"),
        "minutes_short": MessageLookupByLibrary.simpleMessage("min."),
        "moreWithDots": MessageLookupByLibrary.simpleMessage("More..."),
        "morning": MessageLookupByLibrary.simpleMessage("Morning"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "needToLoginWithBiometrics":
            MessageLookupByLibrary.simpleMessage("Need to login by biometrics"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noAccessToPhone":
            MessageLookupByLibrary.simpleMessage("No access to this number?"),
        "no_photo": MessageLookupByLibrary.simpleMessage("no photo"),
        "nothing_found": MessageLookupByLibrary.simpleMessage("Nothing found"),
        "notification": MessageLookupByLibrary.simpleMessage("Notifications"),
        "notifications_appointment_description":
            MessageLookupByLibrary.simpleMessage(
                "Get information about the creation of records, actions on them: changes, transfer or cancellation of records. Receive notifications of upcoming sessions."),
        "notifications_appointment_starts_description":
            MessageLookupByLibrary.simpleMessage(
                "Receive notifications 15 minutes before the start of the session."),
        "notifications_appointment_starts_title":
            MessageLookupByLibrary.simpleMessage(
                "Notify when appointment starts"),
        "notifications_appointment_title":
            MessageLookupByLibrary.simpleMessage("Notify about appointments"),
        "notifications_conversation_messages_description":
            MessageLookupByLibrary.simpleMessage(
                "Get notifications for chat messages"),
        "notifications_conversation_messages_title":
            MessageLookupByLibrary.simpleMessage(
                "Notify me of messages in chats"),
        "notify_by_email":
            MessageLookupByLibrary.simpleMessage("Notify by email"),
        "notify_by_sms": MessageLookupByLibrary.simpleMessage("Notify by sms"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "old_price": MessageLookupByLibrary.simpleMessage("Old price:"),
        "open_a_chat":
            MessageLookupByLibrary.simpleMessage("Open a chat with therapist"),
        "otherPublications":
            MessageLookupByLibrary.simpleMessage("Other publications..."),
        "pay": MessageLookupByLibrary.simpleMessage("Pay"),
        "payment": MessageLookupByLibrary.simpleMessage("Payment"),
        "payments": MessageLookupByLibrary.simpleMessage("Payments"),
        "paymentsAndCards":
            MessageLookupByLibrary.simpleMessage("Payments and cards"),
        "personal_info": MessageLookupByLibrary.simpleMessage("Personal data"),
        "phone": MessageLookupByLibrary.simpleMessage("Phone"),
        "phone_changing_description": MessageLookupByLibrary.simpleMessage(
            "You can change your phone number to a new one that will be linked to your account instead of the old one"),
        "phone_description": MessageLookupByLibrary.simpleMessage(
            "The phone number is used to authorize the user in the system and to connect the support team with the psychotherapist."),
        "photo": MessageLookupByLibrary.simpleMessage("Photo"),
        "pleaseSetUpPinCode":
            MessageLookupByLibrary.simpleMessage("Set up code, please"),
        "pricePerHour": m10,
        "price_with_discount":
            MessageLookupByLibrary.simpleMessage("Price with discount:"),
        "principleOfOperation":
            MessageLookupByLibrary.simpleMessage("Principle of operation"),
        "privacyNotice": MessageLookupByLibrary.simpleMessage("Privacy Notice"),
        "proceed": MessageLookupByLibrary.simpleMessage("Continue"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "receipt": MessageLookupByLibrary.simpleMessage("Receipt"),
        "receipt_not_ready":
            MessageLookupByLibrary.simpleMessage("Receipt not ready yet"),
        "receive_sms_code":
            MessageLookupByLibrary.simpleMessage("Receive code"),
        "refund": MessageLookupByLibrary.simpleMessage("Refund"),
        "repeatCode": MessageLookupByLibrary.simpleMessage("Repeat Code"),
        "reschedule_session":
            MessageLookupByLibrary.simpleMessage("Reschedule session"),
        "restore_image_confirmation": MessageLookupByLibrary.simpleMessage(
            "There are lost files. Restore?"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "searchMessagesButtonTooltip":
            MessageLookupByLibrary.simpleMessage("Search"),
        "search_results_hint": MessageLookupByLibrary.simpleMessage(
            "Search results will appear here"),
        "selectDate": MessageLookupByLibrary.simpleMessage("Select a date"),
        "select_from_gallery":
            MessageLookupByLibrary.simpleMessage("Select from gallery"),
        "sessionPayment":
            MessageLookupByLibrary.simpleMessage("Session payment"),
        "session_call_tip": MessageLookupByLibrary.simpleMessage(
            "Go to the sessions tab so you don\'t miss a video call"),
        "session_class": MessageLookupByLibrary.simpleMessage("Session type"),
        "session_connect": MessageLookupByLibrary.simpleMessage("Connect"),
        "session_date": MessageLookupByLibrary.simpleMessage("Session date"),
        "session_date_error_description": MessageLookupByLibrary.simpleMessage(
            "There are no available slots for this date."),
        "session_duration_is":
            MessageLookupByLibrary.simpleMessage("Session duration is"),
        "session_end_time":
            MessageLookupByLibrary.simpleMessage("Session end time"),
        "session_info": MessageLookupByLibrary.simpleMessage("Session info"),
        "session_payment":
            MessageLookupByLibrary.simpleMessage("Session payment"),
        "session_payment_error_description": MessageLookupByLibrary.simpleMessage(
            "Unfortunately, we were unable to pay for your session, please try again or contact tech. support"),
        "session_price": MessageLookupByLibrary.simpleMessage("Session price"),
        "session_start_time":
            MessageLookupByLibrary.simpleMessage("Session start time"),
        "session_successfully_paid":
            MessageLookupByLibrary.simpleMessage("Session successfully paid"),
        "session_time": MessageLookupByLibrary.simpleMessage("Session time"),
        "session_type": MessageLookupByLibrary.simpleMessage("Session type"),
        "sessions": MessageLookupByLibrary.simpleMessage("Sessions"),
        "setUpCode": MessageLookupByLibrary.simpleMessage("Set up code"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "sex": MessageLookupByLibrary.simpleMessage("Sex"),
        "sex_female": MessageLookupByLibrary.simpleMessage("Female"),
        "sex_male": MessageLookupByLibrary.simpleMessage("Male"),
        "sex_other": MessageLookupByLibrary.simpleMessage("Other"),
        "sex_placeholder": MessageLookupByLibrary.simpleMessage("Choose sex"),
        "skip": MessageLookupByLibrary.simpleMessage("Skip"),
        "smsCode": MessageLookupByLibrary.simpleMessage("SMS-Code"),
        "success": MessageLookupByLibrary.simpleMessage("Success"),
        "surname": MessageLookupByLibrary.simpleMessage("Surname"),
        "take_a_photo": MessageLookupByLibrary.simpleMessage("From camera"),
        "technical_support":
            MessageLookupByLibrary.simpleMessage("Technical support"),
        "termsOfService":
            MessageLookupByLibrary.simpleMessage("Terms of Service"),
        "therapist": MessageLookupByLibrary.simpleMessage("Therapist"),
        "therapist_age":
            MessageLookupByLibrary.simpleMessage("Therapist\'s age"),
        "therapist_countFew":
            MessageLookupByLibrary.simpleMessage("therapists"),
        "therapist_countMany":
            MessageLookupByLibrary.simpleMessage("therapists"),
        "therapist_countOne": MessageLookupByLibrary.simpleMessage("therapist"),
        "therapist_gender":
            MessageLookupByLibrary.simpleMessage("Therapist\'s gender"),
        "therapists": MessageLookupByLibrary.simpleMessage("Therapists"),
        "therapy_for_couple":
            MessageLookupByLibrary.simpleMessage("Therapy for couple"),
        "therapy_for_me":
            MessageLookupByLibrary.simpleMessage("Therapy for me"),
        "toPrice": m11,
        "today": MessageLookupByLibrary.simpleMessage("Today"),
        "touchId": MessageLookupByLibrary.simpleMessage("Touch ID"),
        "touchIdConnect": MessageLookupByLibrary.simpleMessage(
            "Connect Touch ID\nFor safe and comfortable login"),
        "touchIdSettingsWhere": MessageLookupByLibrary.simpleMessage(
            "You can configure login by Touch ID in \'Profile\' Section"),
        "try_again": MessageLookupByLibrary.simpleMessage("Try again"),
        "try_again_description": MessageLookupByLibrary.simpleMessage(
            "Try update data again or contact technical support."),
        "typing": MessageLookupByLibrary.simpleMessage("Typing..."),
        "unavailable": MessageLookupByLibrary.simpleMessage("Unavailable"),
        "upcoming": MessageLookupByLibrary.simpleMessage("Upcoming"),
        "useByDefault": MessageLookupByLibrary.simpleMessage("Use be default"),
        "user_info": MessageLookupByLibrary.simpleMessage("About user"),
        "welcome": MessageLookupByLibrary.simpleMessage("Happy to greet you"),
        "whatTherapyYouNeed":
            MessageLookupByLibrary.simpleMessage("What therapy do you need?"),
        "workInProgress":
            MessageLookupByLibrary.simpleMessage("Work in progress"),
        "work_experience": MessageLookupByLibrary.simpleMessage("Experience"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "yesterday": MessageLookupByLibrary.simpleMessage("Yesterday"),
        "yourForm": MessageLookupByLibrary.simpleMessage("Your form"),
        "your_email": MessageLookupByLibrary.simpleMessage("Your Email"),
        "your_phone": MessageLookupByLibrary.simpleMessage("Your phone number"),
        "your_questionnaire":
            MessageLookupByLibrary.simpleMessage("Your questionnaire")
      };
}
