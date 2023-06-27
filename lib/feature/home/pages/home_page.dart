import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/router/coordinator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            item("Đăng ký tham gia sự kiện tư vấn du học", () {
              XCoordinator.showRegisterEvent();
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
