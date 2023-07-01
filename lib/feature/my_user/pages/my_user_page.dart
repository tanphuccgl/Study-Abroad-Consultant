import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/feature/my_user/enums/my_user_option.dart';
import 'package:study_abroad_consultant/utils/colors.dart';
import 'package:study_abroad_consultant/utils/user_prefs.dart';

class MyUserPage extends StatelessWidget {
  const MyUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(shrinkWrap: true, children: [
            const SizedBox(
              height: 20,
            ),
            Row(
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
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(UserPrefs().getUser()?.name ?? "",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ))
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            const Text("Extensions",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black)),
            const SizedBox(
              height: 12,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (_, i) => Column(
                children: [_item(MyUserOption.values[i])],
              ),
              itemCount: MyUserOption.values.length,
            ),
          ]),
        ),
      ),
    );
  }

  Widget _item(MyUserOption option) {
    return Column(
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => option.onTap(),
            splashColor: XColors.primary.withOpacity(0.3),
            child: ListTile(
              minVerticalPadding: 0,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
              leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: XColors.primary,
                  ),
                  child: Icon(
                    option.iconOf,
                    color: Colors.white,
                    size: 20,
                  )),
              title: Text(option.labelOf,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ), // InkWell
        ),
        if (option != MyUserOption.logout)
          const Divider(
            color: Colors.black,
          )
      ],
    );
  }
}
