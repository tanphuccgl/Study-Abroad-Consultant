import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/feature/dashboard/pages/dashboard_page.dart';
import 'package:study_abroad_consultant/feature/event/pages/update_event_page.dart';
import 'package:study_abroad_consultant/feature/login/login_page.dart';

import 'package:study_abroad_consultant/feature/city/pages/city_page.dart';
import 'package:study_abroad_consultant/feature/nation/pages/contact_support_page.dart';

import 'package:study_abroad_consultant/feature/nation/pages/dang_ky_tuvanduhoc.dart';
import 'package:study_abroad_consultant/feature/event/pages/detail_event_page.dart';
import 'package:study_abroad_consultant/feature/nation/pages/detail_nation_page.dart';
import 'package:study_abroad_consultant/feature/event/pages/event_page.dart';
import 'package:study_abroad_consultant/feature/register/pages/list_register_page.dart';
import 'package:study_abroad_consultant/feature/register/pages/register_detail_page.dart';
import 'package:study_abroad_consultant/feature/register/pages/register_page.dart';
import 'package:study_abroad_consultant/feature/nation/pages/list_form.dart';
import 'package:study_abroad_consultant/feature/nation/pages/nation_page.dart';
import 'package:study_abroad_consultant/feature/nation/pages/register_event.dart';
import 'package:study_abroad_consultant/feature/post/pages/create_post_page.dart';
import 'package:study_abroad_consultant/feature/post/pages/post_page.dart';
import 'package:study_abroad_consultant/feature/post/pages/update_post_page.dart';
import 'package:study_abroad_consultant/feature/university/pages/university_page.dart';
import 'package:study_abroad_consultant/feature/event/pages/create_event_page.dart';
import 'package:study_abroad_consultant/feature/visa/pages/visa_page.dart';
import 'package:study_abroad_consultant/feature/profile/pages/profile_page.dart';
import 'package:study_abroad_consultant/feature/profile/pages/update_profile_page.dart';
import 'package:study_abroad_consultant/feature/sign_up/sign_up_page.dart';
import 'package:study_abroad_consultant/network/model/city.dart';
import 'package:study_abroad_consultant/network/model/event.dart';
import 'package:study_abroad_consultant/network/model/nation.dart';
import 'package:study_abroad_consultant/network/model/post.dart';
import 'package:study_abroad_consultant/network/model/register.dart';
import 'package:study_abroad_consultant/network/model/university.dart';
import 'package:study_abroad_consultant/network/model/visa.dart';
import 'package:study_abroad_consultant/router/coordinator.dart';
import 'package:study_abroad_consultant/router/router_name.dart';
import 'package:study_abroad_consultant/widgets/not_found_page.dart';

class XAppRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case XRouterName.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case XRouterName.signIn:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case XRouterName.dashboard:
        return MaterialPageRoute(builder: (_) => const DashboardPage());
      case XRouterName.nation:
        return MaterialPageRoute(builder: (_) => const NationPage());
      case XRouterName.detailNation:
        return MaterialPageRoute(
            builder: (_) => DetailNationPage(
                  nation: nationEmpty,
                ));
      case XRouterName.city:
        return MaterialPageRoute(
            builder: (_) => CityPage(
                  city: emtyCity,
                ));
      case XRouterName.school:
        return MaterialPageRoute(
            builder: (_) => UniversityPage(
                  university: emtpyuniversity,
                ));
      case XRouterName.visa:
        return MaterialPageRoute(
            builder: (_) => VisaPage(
                  universityVisaData: visaEmpty,
                ));
      case XRouterName.registerEvent:
        return MaterialPageRoute(
            builder: (_) => const EventRegistrationScreen());
      case XRouterName.form:
        return MaterialPageRoute(builder: (_) => RegisterPage());

      case XRouterName.event:
        return MaterialPageRoute(builder: (_) => const EventsPage());

      case XRouterName.eventDetail:
        return MaterialPageRoute(
            builder: (_) => EventDetailPage(
                  event: Event.empty(),
                  contextEventList: XCoordinator.context,
                ));

      case XRouterName.eventUpdate:
        return MaterialPageRoute(
            builder: (_) => UpdateEventPage(
                  event: Event.empty(),
                  contextEventList: XCoordinator.context,
                ));

      case XRouterName.post:
        return MaterialPageRoute(builder: (_) => const PostsPage());

      case XRouterName.postCreate:
        return MaterialPageRoute(
            builder: (_) => CreatePostPage(
                  contextEventList: XCoordinator.context,
                ));

      case XRouterName.postUpdate:
        return MaterialPageRoute(
            builder: (_) => UpdatePostPage(
                  event: Post.empty(),
                  contextEventList: XCoordinator.context,
                ));

      case XRouterName.support:
        return MaterialPageRoute(builder: (_) => const ContactSupportScreen());
      case XRouterName.profile:
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      case XRouterName.updateProfile:
        return MaterialPageRoute(builder: (_) => const UpdateProfilePage());
      case XRouterName.customerList:
        return MaterialPageRoute(builder: (_) => ListRegisterPage());

      case XRouterName.customerDetail:
        return MaterialPageRoute(
            builder: (_) => RegisterDetailPage(
                  register: Register.empty(),
                ));

      case XRouterName.createEvent:
        return MaterialPageRoute(
            builder: (_) => CreateEventPage(
                  contextEventList: XCoordinator.context,
                ));
      case XRouterName.formList:
        return MaterialPageRoute(
            builder: (_) => StudyAbroadRequestListScreen());

      case XRouterName.dangkytuvanduhoc:
        return MaterialPageRoute(
            builder: (_) => StudyAbroadConsultationScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => const NotFoundPage(),
        );
    }
  }
}
