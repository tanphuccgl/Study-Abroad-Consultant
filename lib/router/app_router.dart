import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/feature/dashboard/pages/dashboard_page.dart';
import 'package:study_abroad_consultant/feature/login/login_page.dart';
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

      default:
        return MaterialPageRoute(
          builder: (_) => const NotFoundPage(),
        );
    }
  }
}
