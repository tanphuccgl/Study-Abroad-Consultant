import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_abroad_consultant/feature/event/logic/list_event_bloc.dart';
import 'package:study_abroad_consultant/feature/event/logic/remove_event_bloc.dart';
import 'package:study_abroad_consultant/network/model/event.dart';
import 'package:study_abroad_consultant/router/coordinator.dart';

class EventDetailPage extends StatelessWidget {
  final Event event;
  final BuildContext contextEventList;

  const EventDetailPage(
      {super.key, required this.event, required this.contextEventList});

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
    return BlocProvider.value(
      value: contextEventList.read<ListEventBloc>(),
      child: BlocProvider(
        create: (context) => RemoveEventBloc(event.id),
        child: BlocBuilder<RemoveEventBloc, RemoveEventState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Chi tiết sự kiện'),
              ),
              body: SingleChildScrollView(
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
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            event.des,
                            style: const TextStyle(fontSize: 18),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              const Icon(Icons.calendar_today),
                              const SizedBox(width: 4),
                              Text(
                                event.date.toString(),
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(width: 16),
                              const Icon(Icons.location_on),
                              const SizedBox(width: 4),
                              Text(
                                event.location,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('Register'),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('Share'),
                              ),
                              ElevatedButton(
                                onPressed: () => context
                                    .read<RemoveEventBloc>()
                                    .remove(context, contextEventList),
                                child: const Text('Xóa'),
                              ),
                              ElevatedButton(
                                onPressed: () => XCoordinator.showeventUpdate(
                                    event, contextEventList),
                                child: const Text('Chỉnh sửa'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
