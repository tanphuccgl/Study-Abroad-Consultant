// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_abroad_consultant/feature/advice/logic/advice_bloc.dart';

import 'package:study_abroad_consultant/widgets/input.dart';

class AdvicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AdviceBloc(),
      child: BlocBuilder<AdviceBloc, AdviceState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Tư vấn du học'),
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Thông tin cá nhân',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  XInput(
                    value: state.name,
                    hintText: 'Họ và tên',
                    onChanged: (value) =>
                        context.read<AdviceBloc>().onChangedName(value),
                  ),
                  XInput(
                    value: state.email,
                    hintText: "Email",
                    onChanged: (value) =>
                        context.read<AdviceBloc>().onChangedEmail(value),
                  ),
                  XInput(
                    value: state.phone,
                    hintText: 'Số điện thoại',
                    onChanged: (value) =>
                        context.read<AdviceBloc>().onChangedPhone(value),
                  ),
                  const SizedBox(height: 32.0),
                  const Text(
                    'Nội dung tư vấn',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  XInput(
                    value: state.content,
                    hintText: 'Tin nhắn',
                    onChanged: (value) =>
                        context.read<AdviceBloc>().onChangedContent(value),
                  ),
                  const SizedBox(height: 32.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        onPressed: () =>
                            context.read<AdviceBloc>().onCreateButton(context),
                        child: const Text('Gửi'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
