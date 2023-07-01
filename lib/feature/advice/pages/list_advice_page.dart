// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_abroad_consultant/feature/advice/logic/list_advice_bloc.dart';

import 'package:study_abroad_consultant/router/coordinator.dart';

class ListAdvicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListAdviceBloc(),
      child: BlocBuilder<ListAdviceBloc, ListAdviceState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Danh sách tư vấn'),
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
                    subtitle: Text(state.events[index].email),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      XCoordinator.showDetailAdvice(state.events[index]);
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
