import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/router/coordinator.dart';
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
                  item("Admin hồ sơ khách hàng đăng kí du học", () {
                    XCoordinator.showCustomerList();
                  }),
                  const SizedBox(
                    height: 20,
                  ),
                  item("admin tao bài viet", () {
                    XCoordinator.showCreateArticle();
                  }),
                  const SizedBox(
                    height: 20,
                  ),
                  item("admin tao su kien", () {
                    //    XCoordinator.showCreateEvent();
                  }),
                  const SizedBox(
                    height: 20,
                  ),
                  item("admin danh sach yeu cau tu van du hoc", () {
                    XCoordinator.showFormList();
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
                  item("QUỐC GIA", () {
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
                  item("các bài viết, hướng dẫn và cẩm nang về du học", () {
                    XCoordinator.showStudyAbroad();
                  }),
                  const SizedBox(
                    height: 20,
                  ),
                  item("ContactSupportScreen", () {
                    XCoordinator.showSupport();
                  }),
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
            borderRadius: BorderRadius.circular(10), color: Colors.red),
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
