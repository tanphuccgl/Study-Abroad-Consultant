import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/router/router_name.dart';

class XCoordinator {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static BuildContext get context => navigatorKey.currentState!.context;
  static NavigatorState get navigator => navigatorKey.currentState!;
  static void pop<T extends Object?>([T? result]) async {
    return navigatorKey.currentState!.pop(result);
  }

  static Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) =>
      navigator.pushNamed(
        routeName,
        arguments: arguments,
      );

  static Future<T?> push<T extends Object?>(Widget screen) => navigator.push(
        MaterialPageRoute(builder: (context) => screen),
      );

  static Future showSignIn() => pushNamed(XRouterName.signIn);

  static Future logoutAndShowSignIn() => navigator.pushNamedAndRemoveUntil(
        XRouterName.signIn,
        (_) => false,
      );

  static Future showDashboard() => pushNamed(XRouterName.dashboard);

  static Future showNation() => pushNamed(XRouterName.nation);
  static Future showDetailNation() => pushNamed(XRouterName.detailNation);
  static Future showCity() => pushNamed(XRouterName.city);
  static Future showSchool() => pushNamed(XRouterName.school);
  static Future showVisa() => pushNamed(XRouterName.visa);
  static Future showRegisterEvent() => pushNamed(XRouterName.registerEvent);
  static Future showForm() => pushNamed(XRouterName.form);
  static Future showEvent() => pushNamed(XRouterName.event);

  static Future showEventDetail() => pushNamed(XRouterName.eventDetail);
  static Future showStudyAbroad() => pushNamed(XRouterName.studyAbroad);
  static Future showSupport() => pushNamed(XRouterName.support);

  static Future showProfile() => pushNamed(XRouterName.profile);

  static Future showUpdateProfile() => pushNamed(XRouterName.updateProfile);
}
