import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/feature/dashboard/pages/dashboard_page.dart';
import 'package:study_abroad_consultant/feature/login/login_page.dart';
import 'package:study_abroad_consultant/feature/nation/pages/city_page.dart';
import 'package:study_abroad_consultant/feature/nation/pages/contact_support_page.dart';
import 'package:study_abroad_consultant/feature/nation/pages/detail_event_page.dart';
import 'package:study_abroad_consultant/feature/nation/pages/detail_nation_page.dart';
import 'package:study_abroad_consultant/feature/nation/pages/event_page.dart';
import 'package:study_abroad_consultant/feature/nation/pages/form_apply_page.dart';
import 'package:study_abroad_consultant/feature/nation/pages/nation_page.dart';
import 'package:study_abroad_consultant/feature/nation/pages/register_event.dart';
import 'package:study_abroad_consultant/feature/nation/pages/school_page.dart';
import 'package:study_abroad_consultant/feature/nation/pages/study_abroad_articles_page.dart';
import 'package:study_abroad_consultant/feature/nation/pages/visa_page.dart';
import 'package:study_abroad_consultant/feature/profile/pages/profile_page.dart';
import 'package:study_abroad_consultant/feature/profile/pages/update_profile_page.dart';
import 'package:study_abroad_consultant/feature/sign_up/sign_up_page.dart';
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
        return MaterialPageRoute(builder: (_) => NationPage());
      case XRouterName.detailNation:
        return MaterialPageRoute(builder: (_) => const DetailNationPage());
      case XRouterName.city:
        return MaterialPageRoute(builder: (_) => const CityPage());
      case XRouterName.school:
        return MaterialPageRoute(
            builder: (_) => const StudyAbroadUniversityDetailPage());
      case XRouterName.visa:
        return MaterialPageRoute(builder: (_) => const UniversityVisaPage());
      case XRouterName.registerEvent:
        return MaterialPageRoute(
            builder: (_) => const EventRegistrationScreen());
      case XRouterName.form:
        return MaterialPageRoute(builder: (_) => StudyAbroadConsultationForm());
      case XRouterName.event:
        return MaterialPageRoute(builder: (_) => const StudyAbroadEventsPage());
      case XRouterName.eventDetail:
        return MaterialPageRoute(builder: (_) => const EventDetailPage());
      case XRouterName.studyAbroad:
        return MaterialPageRoute(
            builder: (_) => const StudyAbroadArticlesScreen());
      case XRouterName.support:
        return MaterialPageRoute(builder: (_) => const ContactSupportScreen());
      case XRouterName.profile:
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      case XRouterName.updateProfile:
        return MaterialPageRoute(builder: (_) => const UpdateProfilePage());

      default:
        return MaterialPageRoute(
          builder: (_) => const NotFoundPage(),
        );
    }
  }
}
