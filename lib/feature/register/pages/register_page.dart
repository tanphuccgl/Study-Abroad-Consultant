// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_abroad_consultant/feature/register/logic/register_bloc.dart';
import 'package:study_abroad_consultant/widgets/input.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterBloc(),
      child: BlocBuilder<RegisterBloc, RegisterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Đăng ký du học'),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    XInput(
                      value: state.name,
                      hintText: 'Họ và tên',
                      onChanged: (value) =>
                          context.read<RegisterBloc>().onChangedName(value),
                    ),
                    XInput(
                      value: state.email,
                      hintText: 'Email',
                      onChanged: (value) =>
                          context.read<RegisterBloc>().onChangedEmail(value),
                    ),
                    XInput(
                      value: state.phone,
                      hintText: 'Số điện thoại',
                      onChanged: (value) =>
                          context.read<RegisterBloc>().onChangedPhone(value),
                    ),
                    XInput(
                      value: state.location,
                      hintText: 'Địa chỉ',
                      onChanged: (value) =>
                          context.read<RegisterBloc>().onChangedLocation(value),
                    ),
                    XInput(
                      value: state.nation,
                      hintText: 'Quốc gia',
                      onChanged: (value) =>
                          context.read<RegisterBloc>().onChangedNation(value),
                    ),
                    XInput(
                      value: state.school,
                      hintText: 'Trường/Đại học',
                      onChanged: (value) =>
                          context.read<RegisterBloc>().onChangedSchool(value),
                    ),
                    XInput(
                      value: state.majors,
                      hintText: 'Ngành học',
                      onChanged: (value) =>
                          context.read<RegisterBloc>().onChangedMajors(value),
                    ),
                    XInput(
                      value: state.target,
                      hintText: 'Mục tiêu du học',
                      onChanged: (value) =>
                          context.read<RegisterBloc>().onChangedTarget(value),
                    ),
                    XInput(
                      value: state.experience,
                      hintText: 'Kinh nghiệm du học trước đây',
                      onChanged: (value) => context
                          .read<RegisterBloc>()
                          .onChangedExperience(value),
                    ),
                    XInput(
                      value: state.opinion,
                      hintText: 'Ý kiến khác',
                      onChanged: (value) =>
                          context.read<RegisterBloc>().onChangedOpinion(value),
                    ),
                    const SizedBox(height: 24.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton(
                          onPressed: () => context
                              .read<RegisterBloc>()
                              .onCreateButton(context),
                          child: const Text('Gửi'),
                        ),
                      ],
                    ),
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
