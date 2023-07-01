import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_abroad_consultant/feature/post/logic/list_post_bloc.dart';
import 'package:study_abroad_consultant/router/coordinator.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});
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
    return BlocProvider(
      create: (context) => ListPostBloc(),
      child: BlocBuilder<ListPostBloc, ListPostState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Danh sách bài viết'),
            ),
            body: ListView.builder(
              itemCount: state.events.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    XCoordinator.showPostDetail(state.events[index], context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state.events[index].title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'By ${state.events[index].author} - ${state.events[index].date}',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Image.asset(
                          getRandomImage(),
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            floatingActionButton: FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  XCoordinator.showCreatePost(context);
                }),
          );
        },
      ),
    );
  }
}
