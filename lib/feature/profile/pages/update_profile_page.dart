import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/utils/colors.dart';
import 'package:study_abroad_consultant/widgets/input.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    const Expanded(
                      flex: 8,
                      child: Center(
                        child: Text("Update Profile",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: XColors.primary)),
                      ),
                    ),
                    const Flexible(
                      flex: 1,
                      child: SizedBox(),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: XInput(
                  value: "",
                  hintText: "Full name",
                  prefixIcon: Icon(
                    Icons.person,
                    color: XColors.primary,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: XInput(
                  value: "",
                  hintText: "Email",
                  prefixIcon: Icon(
                    Icons.person,
                    color: XColors.primary,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: XInput(
                  value: "",
                  hintText: "Your phone",
                  prefixIcon: Icon(
                    Icons.person,
                    color: XColors.primary,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {},
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
                  child: const Text("UPDATE",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: XColors.primary))),
            ],
          ),
        ),
      ),
    );
  }
}
