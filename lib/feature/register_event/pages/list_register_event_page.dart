// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_abroad_consultant/feature/register_event/logic/list_register_event_bloc.dart';

class ListRegisterEventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListRegisterEventBloc(),
      child: BlocBuilder<ListRegisterEventBloc, ListRegisterEventState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Danh sách đăng ký sự kiện'),
            ),
            body: ListView.builder(
              itemCount: state.events.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 2,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text(
                          state.events[index].name.substring(0, 1),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      title: Text(
                        "Tên ${state.events[index].name}",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Email ${state.events[index].email}"),
                          Text("Phone ${state.events[index].phone}"),
                        ],
                      )),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
