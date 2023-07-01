import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/router/coordinator.dart';
import 'package:study_abroad_consultant/utils/colors.dart';
import 'package:study_abroad_consultant/utils/user_prefs.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                  backgroundImage: AssetImage("XImage.avatar"), radius: 40),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(UserPrefs().getUser()?.username ?? "",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(UserPrefs().getUser()?.name ?? "",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      )),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          _item(Icons.email, UserPrefs().getUser()?.email ?? ""),
          const SizedBox(
            height: 40,
          ),
          _item(Icons.call, UserPrefs().getUser()?.phone ?? ""),
          const SizedBox(
            height: 40,
          ),
          _item(Icons.home, UserPrefs().getUser()?.location ?? ""),
          const SizedBox(
            height: 70,
          ),
          ElevatedButton(
              onPressed: () => XCoordinator.showUpdateProfile(),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(271, 58),
                elevation: 0,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    // ignore: prefer_const_constructors
                    side: BorderSide(
                      color: XColors.primary,
                    )),
                backgroundColor: Colors.white,
              ),
              child: const Text("EDIT",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: XColors.primary))),
        ],
      ),
    );
  }

  Widget _item(IconData icon, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Align(
              alignment: Alignment.centerRight,
              child: Icon(
                icon,
                color: XColors.primary,
                size: 20,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 7,
          child: Text(text,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              )),
        ),
      ],
    );
  }
}
