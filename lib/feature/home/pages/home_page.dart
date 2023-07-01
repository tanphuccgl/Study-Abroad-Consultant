import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/router/coordinator.dart';
import 'package:study_abroad_consultant/utils/colors.dart';
import 'package:study_abroad_consultant/utils/user_prefs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return UserPrefs().getUser()?.isAdmin == true
        ? Scaffold(
            body: Padding(
              padding: const EdgeInsets.fromLTRB(15, 50, 15, 0),
              child: ListView(
                shrinkWrap: true,
                children: [
                  item("Danh sách đăng kí du học", () {
                    XCoordinator.showCustomerList();
                  }),
                  const SizedBox(
                    height: 20,
                  ),
                  item("Danh sách tư vấn", () {
                    XCoordinator.showListAdvice();
                  }),
                  const SizedBox(
                    height: 20,
                  ),
                  item("Danh sách đăng ký sự kiện", () {
                    XCoordinator.showlistRegisterEvent();
                  }),
                  const SizedBox(
                    height: 20,
                  ),
                  item("Sự kiện", () {
                    XCoordinator.showEvent();
                  }),
                  const SizedBox(
                    height: 20,
                  ),
                  item("Bài viết", () {
                    XCoordinator.showPost();
                  }),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )
        : Scaffold(
            body: Padding(
              padding: const EdgeInsets.fromLTRB(15, 50, 15, 0),
              child: ListView(
                shrinkWrap: true,
                children: [
                  item("Quốc gia", () {
                    XCoordinator.showNation();
                  }),
                  const SizedBox(
                    height: 20,
                  ),
                  item("Sự kiện", () {
                    XCoordinator.showEvent();
                  }),
                  const SizedBox(
                    height: 20,
                  ),
                  item("Bài viết", () {
                    XCoordinator.showPost();
                  }),
                  const SizedBox(
                    height: 20,
                  ),
                  // item("ContactSupportScreen", () {
                  //   XCoordinator.showSupport();
                  // }),
                ],
              ),
            ),
          );
  }

  Widget item(String text, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: XColors.primary),
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                text,
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Colors.white),
              )),
        ),
      ),
    );
  }
}
