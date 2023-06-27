import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_abroad_consultant/feature/login/login_page.dart';
import 'package:study_abroad_consultant/feature/sign_up/logic/sign_up_bloc.dart';
import 'package:study_abroad_consultant/widgets/indicator.dart';
import 'package:study_abroad_consultant/widgets/input.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignUpBloc(),
      child: BlocBuilder<SignUpBloc, SignUpState>(
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              iconTheme: const IconThemeData(
                color: Colors.black,
              ),
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const Text(
                          "Hello! Đăng ký để bắt đầu",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    XInput(
                      hintText: "UserName",
                      value: state.username,
                      onChanged: (value) =>
                          context.read<SignUpBloc>().onChangedUsername(value),
                    ),
                    XInput(
                      hintText: "Email",
                      value: state.email,
                      onChanged: (value) =>
                          context.read<SignUpBloc>().onChangedEmail(value),
                    ),
                    XInput(
                      hintText: "Password",
                      value: state.password,
                      onChanged: (value) =>
                          context.read<SignUpBloc>().onChangedPassword(value),
                    ),
                    XInput(
                      hintText: "Confirm password",
                      value: state.rePassword,
                      onChanged: (value) =>
                          context.read<SignUpBloc>().onChangedRePassword(value),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      child: state.isLoading
                          ? const XIndicator()
                          : Row(
                              children: [
                                Expanded(
                                  child: MaterialButton(
                                    color: const Color(0xFF6FC9E5),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    onPressed: () => context
                                        .read<SignUpBloc>()
                                        .onRegister(context),
                                    child: const Padding(
                                      padding: EdgeInsets.all(25.0),
                                      child: Text(
                                        "Register",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account?",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            },
                            child: const Text(
                              "  Login Now",
                              style: TextStyle(
                                  color: Color(0xff35C2C1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
