import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_abroad_consultant/feature/profile/logic/update_profile_bloc.dart';
import 'package:study_abroad_consultant/utils/colors.dart';
import 'package:study_abroad_consultant/widgets/input.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdateProfileBloc(),
      child: BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Chỉnh sửa profile"),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: XInput(
                      value: state.name,
                      hintText: "Full name",
                      onChanged: (value) => context
                          .read<UpdateProfileBloc>()
                          .onChangedName(value),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: XColors.primary,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: XInput(
                      value: state.username,
                      hintText: "Username",
                      onChanged: (value) => context
                          .read<UpdateProfileBloc>()
                          .onChangedUsernaeme(value),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: XColors.primary,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: XInput(
                      onChanged: (value) => context
                          .read<UpdateProfileBloc>()
                          .onChangedEmail(value),
                      value: state.email,
                      hintText: "Email",
                      prefixIcon: const Icon(
                        Icons.person,
                        color: XColors.primary,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: XInput(
                      onChanged: (value) => context
                          .read<UpdateProfileBloc>()
                          .onChangedPhone(value),
                      value: state.phone,
                      hintText: "Your phone",
                      prefixIcon: const Icon(
                        Icons.person,
                        color: XColors.primary,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: XInput(
                      onChanged: (value) => context
                          .read<UpdateProfileBloc>()
                          .onChangedLocation(value),
                      value: state.location,
                      hintText: "Location",
                      prefixIcon: const Icon(
                        Icons.person,
                        color: XColors.primary,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () => context
                          .read<UpdateProfileBloc>()
                          .onCreateButton(context),
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
          );
        },
      ),
    );
  }
}
