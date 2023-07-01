// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_abroad_consultant/feature/event/logic/list_event_bloc.dart';
import 'package:study_abroad_consultant/feature/event/logic/update_event_bloc.dart';
import 'package:study_abroad_consultant/network/model/event.dart';
import 'package:study_abroad_consultant/widgets/input.dart';

class UpdateEventPage extends StatelessWidget {
  final BuildContext contextEventList;
  final Event event;
  const UpdateEventPage({
    Key? key,
    required this.contextEventList,required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: contextEventList.read<ListEventBloc>(),
      child: BlocProvider(
        create: (context) => UpdateEventBloc(event),
        child: BlocBuilder<UpdateEventBloc, UpdateEventState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Chỉnh sửa sự kiện'),
              ),
              body: Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      XInput(
                        value: state.title,
                        hintText: "Tên sự kiện",
                        onChanged: (value) => context
                            .read<UpdateEventBloc>()
                            .onChangedTitle(value),
                      ),
                      XInput(
                        value: state.des,
                        hintText: "Mô tả",
                        onChanged: (value) =>
                            context.read<UpdateEventBloc>().onChangedDes(value),
                      ),
                      XInput(
                        value: state.date,
                        hintText: "Ngày diễn ra",
                        onChanged: (value) => context
                            .read<UpdateEventBloc>()
                            .onChangedDate(value),
                      ),
                      XInput(
                        value: state.location,
                        hintText: "Địa điểm",
                        onChanged: (value) => context
                            .read<UpdateEventBloc>()
                            .onChangedLocation(value),
                      ),
                      const SizedBox(height: 32),
                      ElevatedButton(
                        onPressed: () => context
                            .read<UpdateEventBloc>()
                            .onCreateButton(context, contextEventList),
                        child: const Text('Xác nhận'),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
