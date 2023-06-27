import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/feature/home/pages/home_page.dart';
import 'package:study_abroad_consultant/router/base_coordinator.dart';
import 'package:study_abroad_consultant/widgets/not_found_page.dart';

class XHomeRouterName {
  static const String home = '/home';
}

class HomeCoordinator extends BaseCoordinator {
  @override
  String get initialRoute => XHomeRouterName.home;

  @override
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case XHomeRouterName.home:
        return MaterialPageRoute(builder: (_) => const HomePage());

      default:
        return MaterialPageRoute(builder: (_) => const NotFoundPage());
    }
  }
}
