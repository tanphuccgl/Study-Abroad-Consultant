import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_abroad_consultant/feature/event/logic/list_event_bloc.dart';
import 'package:study_abroad_consultant/network/model/event.dart';
import 'package:study_abroad_consultant/router/coordinator.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListEventBloc(),
      child: BlocBuilder<ListEventBloc, ListEventState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Danh sách sự kiện'),
            ),
            body: ListView.builder(
              itemCount: state.events.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () => XCoordinator.showEventDetail(
                        state.events[index], context),
                    child: StudyAbroadEventCard(event: state.events[index]));
              },
            ),
            floatingActionButton: FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  XCoordinator.showCreateEvent(context);
                }),
          );
        },
      ),
    );
  }
}

class StudyAbroadEventCard extends StatelessWidget {
  final Event event;

  const StudyAbroadEventCard({super.key, required this.event});

  String getRandomImage() {
    List<String> images = [
      'assets/event1.jpeg',
      'assets/event2.jpeg',
      'assets/event3.jpeg',
      'assets/event4.jpeg',
      'assets/event5.jpeg',
    ];

    Random random = Random();
    int index = random.nextInt(images.length);

    return images[index];
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            getRandomImage(),
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  event.des,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.calendar_today),
                    const SizedBox(width: 4),
                    Text(
                      event.date.toString(),
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(width: 16),
                    const Icon(Icons.location_on),
                    const SizedBox(width: 4),
                    Text(
                      event.location,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
