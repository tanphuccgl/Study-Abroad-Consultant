// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_abroad_consultant/feature/register/logic/list_register_bloc.dart';
import 'package:study_abroad_consultant/router/coordinator.dart';

class ListRegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListRegisterBloc(),
      child: BlocBuilder<ListRegisterBloc, ListRegisterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Danh sách hồ sơ khách hàng'),
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
                      state.events[index].name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(state.events[index].school),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      XCoordinator.showCustomerDetail(state.events[index]);
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
