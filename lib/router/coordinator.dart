import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/feature/advice/pages/advice_detail_page.dart';
import 'package:study_abroad_consultant/feature/city/pages/city_page.dart';
import 'package:study_abroad_consultant/feature/event/pages/create_event_page.dart';
import 'package:study_abroad_consultant/feature/event/pages/detail_event_page.dart';
import 'package:study_abroad_consultant/feature/event/pages/update_event_page.dart';
import 'package:study_abroad_consultant/feature/nation/pages/detail_nation_page.dart';
import 'package:study_abroad_consultant/feature/post/pages/create_post_page.dart';
import 'package:study_abroad_consultant/feature/post/pages/detail_post_page.dart';
import 'package:study_abroad_consultant/feature/post/pages/update_post_page.dart';
import 'package:study_abroad_consultant/feature/register/pages/register_detail_page.dart';
import 'package:study_abroad_consultant/feature/university/pages/university_page.dart';
import 'package:study_abroad_consultant/feature/visa/pages/visa_page.dart';
import 'package:study_abroad_consultant/network/model/advice.dart';
import 'package:study_abroad_consultant/network/model/city.dart';
import 'package:study_abroad_consultant/network/model/event.dart';
import 'package:study_abroad_consultant/network/model/nation.dart';
import 'package:study_abroad_consultant/network/model/post.dart';
import 'package:study_abroad_consultant/network/model/register.dart';
import 'package:study_abroad_consultant/network/model/university.dart';
import 'package:study_abroad_consultant/network/model/visa.dart';
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

  static Future showDetailNation(Nation nation) =>
      push(DetailNationPage(nation: nation));

  static Future showCity(City city) => push(CityPage(city: city));

  static Future showSchool(University university) =>
      push(UniversityPage(university: university));

  static Future showVisa(UniversityVisaData universityVisaData) =>
      push(VisaPage(
        universityVisaData: universityVisaData,
      ));

  static Future showAddEvent() => pushNamed(XRouterName.registerEvent);
  static Future showForm() => pushNamed(XRouterName.form);

  static Future showEvent() => pushNamed(XRouterName.event);

  static Future showCreateEvent(BuildContext contextEventList) =>
      push(CreateEventPage(contextEventList: contextEventList));

  static Future showEventDetail(Event event, BuildContext contextEventList) =>
      push(EventDetailPage(event: event, contextEventList: contextEventList));

  static Future showeventUpdate(Event event, BuildContext contextEventList) =>
      push(UpdateEventPage(event: event, contextEventList: contextEventList));

  static Future showPost() => pushNamed(XRouterName.post);

  static Future showCreatePost(BuildContext contextEventList) =>
      push(CreatePostPage(contextEventList: contextEventList));

  static Future showPostDetail(Post event, BuildContext contextEventList) =>
      push(DetailPostPage(event: event, contextEventList: contextEventList));

  static Future showPostUpdate(Post event, BuildContext contextEventList) =>
      push(UpdatePostPage(event: event, contextEventList: contextEventList));

  static Future showStudyAbroad() => pushNamed(XRouterName.studyAbroad);
  static Future showSupport() => pushNamed(XRouterName.support);

  static Future showProfile() => pushNamed(XRouterName.profile);

  static Future showUpdateProfile() => pushNamed(XRouterName.updateProfile);
  static Future showCustomerList() => pushNamed(XRouterName.customerList);
  static Future showCustomerDetail(Register register) =>
      push(RegisterDetailPage(register: register));

  static Future showCreateArticle() => pushNamed(XRouterName.createArticle);

  static Future showFormList() => pushNamed(XRouterName.formList);
  static Future showdangkytuvanduhoc() =>
      pushNamed(XRouterName.dangkytuvanduhoc);

  static Future showListAdvice() => pushNamed(XRouterName.listAdvice);

  static Future showDetailAdvice(Advice register) =>
      push(AdviceDetailPage(register: register));

  static Future showRegisterEvent1() => pushNamed(XRouterName.registerEvent1);
  static Future showlistRegisterEvent() =>
      pushNamed(XRouterName.listRegisterEvent);
}
