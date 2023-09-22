// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'auto_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MainPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SplashPage(),
      );
    },
    TherapistDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TherapistDetailsRouteArgs>(
          orElse: () =>
              TherapistDetailsRouteArgs(id: pathParams.getString('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TherapistDetailsPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    TherapistListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TherapistListPage(),
      );
    },
    TherapistSearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TherapistSearchPage(),
      );
    },
  };
}

/// generated route for
/// [AppointmentPage]
class AppointmentRoute extends PageRouteInfo<void> {
  const AppointmentRoute({List<PageRouteInfo>? children})
      : super(
          AppointmentRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppointmentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ArticleDetailPage]
class ArticleDetailRoute extends PageRouteInfo<ArticleDetailRouteArgs> {
  ArticleDetailRoute({
    Key? key,
    required String slug,
    List<PageRouteInfo>? children,
  }) : super(
          ArticleDetailRoute.name,
          args: ArticleDetailRouteArgs(
            key: key,
            slug: slug,
          ),
          rawPathParams: {'slug': slug},
          initialChildren: children,
        );

  static const String name = 'ArticleDetailRoute';

  static const PageInfo<ArticleDetailRouteArgs> page =
      PageInfo<ArticleDetailRouteArgs>(name);
}

class ArticleDetailRouteArgs {
  const ArticleDetailRouteArgs({
    this.key,
    required this.slug,
  });

  final Key? key;

  final String slug;

  @override
  String toString() {
    return 'ArticleDetailRouteArgs{key: $key, slug: $slug}';
  }
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BlogPage]
class BlogRoute extends PageRouteInfo<void> {
  const BlogRoute({List<PageRouteInfo>? children})
      : super(
          BlogRoute.name,
          initialChildren: children,
        );

  static const String name = 'BlogRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BlogSearchPage]
class BlogSearchRoute extends PageRouteInfo<void> {
  const BlogSearchRoute({List<PageRouteInfo>? children})
      : super(
          BlogSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'BlogSearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatsListPage]
class ChatsListRoute extends PageRouteInfo<void> {
  const ChatsListRoute({List<PageRouteInfo>? children})
      : super(
          ChatsListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatsListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LocalAuthConfigurationPage]
class LocalAuthConfigurationRoute
    extends PageRouteInfo<LocalAuthConfigurationRouteArgs> {
  LocalAuthConfigurationRoute({
    Key? key,
    required bool questionnaireCompleted,
    List<PageRouteInfo>? children,
  }) : super(
          LocalAuthConfigurationRoute.name,
          args: LocalAuthConfigurationRouteArgs(
            key: key,
            questionnaireCompleted: questionnaireCompleted,
          ),
          initialChildren: children,
        );

  static const String name = 'LocalAuthConfigurationRoute';

  static const PageInfo<LocalAuthConfigurationRouteArgs> page =
      PageInfo<LocalAuthConfigurationRouteArgs>(name);
}

class LocalAuthConfigurationRouteArgs {
  const LocalAuthConfigurationRouteArgs({
    this.key,
    required this.questionnaireCompleted,
  });

  final Key? key;

  final bool questionnaireCompleted;

  @override
  String toString() {
    return 'LocalAuthConfigurationRouteArgs{key: $key, questionnaireCompleted: $questionnaireCompleted}';
  }
}

/// generated route for
/// [LocalAuthPage]
class LocalAuthRoute extends PageRouteInfo<void> {
  const LocalAuthRoute({List<PageRouteInfo>? children})
      : super(
          LocalAuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocalAuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PinOnboardingPage]
class PinOnboardingRoute extends PageRouteInfo<PinOnboardingRouteArgs> {
  PinOnboardingRoute({
    Key? key,
    required bool questionnaireCompleted,
    List<PageRouteInfo>? children,
  }) : super(
          PinOnboardingRoute.name,
          args: PinOnboardingRouteArgs(
            key: key,
            questionnaireCompleted: questionnaireCompleted,
          ),
          initialChildren: children,
        );

  static const String name = 'PinOnboardingRoute';

  static const PageInfo<PinOnboardingRouteArgs> page =
      PageInfo<PinOnboardingRouteArgs>(name);
}

class PinOnboardingRouteArgs {
  const PinOnboardingRouteArgs({
    this.key,
    required this.questionnaireCompleted,
  });

  final Key? key;

  final bool questionnaireCompleted;

  @override
  String toString() {
    return 'PinOnboardingRouteArgs{key: $key, questionnaireCompleted: $questionnaireCompleted}';
  }
}

/// generated route for
/// [PlaceholderPage]
class PlaceholderRoute extends PageRouteInfo<void> {
  const PlaceholderRoute({List<PageRouteInfo>? children})
      : super(
          PlaceholderRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlaceholderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [QuestionnairePage]
class QuestionnaireRoute extends PageRouteInfo<QuestionnaireRouteArgs> {
  QuestionnaireRoute({
    Key? key,
    bool newQuestionnaire = false,
    required String buttonTitle,
    void Function()? successCallback,
    List<PageRouteInfo>? children,
  }) : super(
          QuestionnaireRoute.name,
          args: QuestionnaireRouteArgs(
            key: key,
            newQuestionnaire: newQuestionnaire,
            buttonTitle: buttonTitle,
            successCallback: successCallback,
          ),
          initialChildren: children,
        );

  static const String name = 'QuestionnaireRoute';

  static const PageInfo<QuestionnaireRouteArgs> page =
      PageInfo<QuestionnaireRouteArgs>(name);
}

class QuestionnaireRouteArgs {
  const QuestionnaireRouteArgs({
    this.key,
    this.newQuestionnaire = false,
    required this.buttonTitle,
    this.successCallback,
  });

  final Key? key;

  final bool newQuestionnaire;

  final String buttonTitle;

  final void Function()? successCallback;

  @override
  String toString() {
    return 'QuestionnaireRouteArgs{key: $key, newQuestionnaire: $newQuestionnaire, buttonTitle: $buttonTitle, successCallback: $successCallback}';
  }
}

/// generated route for
/// [SingleChatPage]
class SingleChatRoute extends PageRouteInfo<SingleChatRouteArgs> {
  SingleChatRoute({
    Key? key,
    required String id,
    String? interlocutorId,
    String? authorName,
    String? authorAvatarUrl,
    List<PageRouteInfo>? children,
  }) : super(
          SingleChatRoute.name,
          args: SingleChatRouteArgs(
            key: key,
            id: id,
            interlocutorId: interlocutorId,
            authorName: authorName,
            authorAvatarUrl: authorAvatarUrl,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'SingleChatRoute';

  static const PageInfo<SingleChatRouteArgs> page =
      PageInfo<SingleChatRouteArgs>(name);
}

class SingleChatRouteArgs {
  const SingleChatRouteArgs({
    this.key,
    required this.id,
    this.interlocutorId,
    this.authorName,
    this.authorAvatarUrl,
  });

  final Key? key;

  final String id;

  final String? interlocutorId;

  final String? authorName;

  final String? authorAvatarUrl;

  @override
  String toString() {
    return 'SingleChatRouteArgs{key: $key, id: $id, interlocutorId: $interlocutorId, authorName: $authorName, authorAvatarUrl: $authorAvatarUrl}';
  }
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TherapistDetailsPage]
class TherapistDetailsRoute extends PageRouteInfo<TherapistDetailsRouteArgs> {
  TherapistDetailsRoute({
    Key? key,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
          TherapistDetailsRoute.name,
          args: TherapistDetailsRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'TherapistDetailsRoute';

  static const PageInfo<TherapistDetailsRouteArgs> page =
      PageInfo<TherapistDetailsRouteArgs>(name);
}

class TherapistDetailsRouteArgs {
  const TherapistDetailsRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'TherapistDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [TherapistListPage]
class TherapistListRoute extends PageRouteInfo<void> {
  const TherapistListRoute({List<PageRouteInfo>? children})
      : super(
          TherapistListRoute.name,
          initialChildren: children,
        );

  static const String name = 'TherapistListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TherapistSearchPage]
class TherapistSearchRoute extends PageRouteInfo<void> {
  const TherapistSearchRoute({List<PageRouteInfo>? children})
      : super(
          TherapistSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'TherapistSearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VideoCallPage]
class VideoCallRoute extends PageRouteInfo<VideoCallRouteArgs> {
  VideoCallRoute({
    Key? key,
    required String appointmentId,
    String? therapistName,
    String? avatarUrl,
    String? period,
    String? chatId,
    List<PageRouteInfo>? children,
  }) : super(
          VideoCallRoute.name,
          args: VideoCallRouteArgs(
            key: key,
            appointmentId: appointmentId,
            therapistName: therapistName,
            avatarUrl: avatarUrl,
            period: period,
            chatId: chatId,
          ),
          rawPathParams: {
            'appointmentId': appointmentId,
            'therapistName': therapistName,
            'avatarUrl': avatarUrl,
            'period': period,
            'chatId': chatId,
          },
          initialChildren: children,
        );

  static const String name = 'VideoCallRoute';

  static const PageInfo<VideoCallRouteArgs> page =
      PageInfo<VideoCallRouteArgs>(name);
}

class VideoCallRouteArgs {
  const VideoCallRouteArgs({
    this.key,
    required this.appointmentId,
    this.therapistName,
    this.avatarUrl,
    this.period,
    this.chatId,
  });

  final Key? key;

  final String appointmentId;

  final String? therapistName;

  final String? avatarUrl;

  final String? period;

  final String? chatId;

  @override
  String toString() {
    return 'VideoCallRouteArgs{key: $key, appointmentId: $appointmentId, therapistName: $therapistName, avatarUrl: $avatarUrl, period: $period, chatId: $chatId}';
  }
}

/// generated route for
/// [WebViewPage]
class WebViewRoute extends PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    Key? key,
    required String url,
    required void Function()? onPageFinished,
    required String title,
    required List<String> restrictedUrls,
    required bool blockNavigationRequests,
    List<PageRouteInfo>? children,
  }) : super(
          WebViewRoute.name,
          args: WebViewRouteArgs(
            key: key,
            url: url,
            onPageFinished: onPageFinished,
            title: title,
            restrictedUrls: restrictedUrls,
            blockNavigationRequests: blockNavigationRequests,
          ),
          initialChildren: children,
        );

  static const String name = 'WebViewRoute';

  static const PageInfo<WebViewRouteArgs> page =
      PageInfo<WebViewRouteArgs>(name);
}

class WebViewRouteArgs {
  const WebViewRouteArgs({
    this.key,
    required this.url,
    required this.onPageFinished,
    required this.title,
    required this.restrictedUrls,
    required this.blockNavigationRequests,
  });

  final Key? key;

  final String url;

  final void Function()? onPageFinished;

  final String title;

  final List<String> restrictedUrls;

  final bool blockNavigationRequests;

  @override
  String toString() {
    return 'WebViewRouteArgs{key: $key, url: $url, onPageFinished: $onPageFinished, title: $title, restrictedUrls: $restrictedUrls, blockNavigationRequests: $blockNavigationRequests}';
  }
}
