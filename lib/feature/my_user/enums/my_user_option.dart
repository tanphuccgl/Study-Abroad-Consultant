import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/router/coordinator.dart';

enum MyUserOption {
  editProfile,

  logout;

  String get labelOf {
    switch (this) {
      case MyUserOption.editProfile:
        return 'Edit Profile';

      case MyUserOption.logout:
        return 'Logout';
    }
  }

  void onTap() {
    switch (this) {
      case MyUserOption.editProfile:
        XCoordinator.showProfile();
        break;
          case MyUserOption.logout:
        XCoordinator.logoutAndShowSignIn();
        break;
      default:
        break;
    }
  }

  IconData get iconOf {
    switch (this) {
      case MyUserOption.editProfile:
        return Icons.person;

      case MyUserOption.logout:
        return Icons.logout;
    }
  }
}
