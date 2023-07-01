import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_abroad_consultant/feature/post/logic/list_post_bloc.dart';
import 'package:study_abroad_consultant/feature/post/logic/remove_post_bloc.dart';
import 'package:study_abroad_consultant/network/model/post.dart';
import 'package:study_abroad_consultant/router/coordinator.dart';
import 'package:study_abroad_consultant/utils/user_prefs.dart';

class DetailPostPage extends StatelessWidget {
  final Post event;
  final BuildContext contextEventList;

  const DetailPostPage(
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
      value: contextEventList.read<ListPostBloc>(),
      child: BlocProvider(
        create: (context) => RemovePostBloc(event.id),
        child: BlocBuilder<RemovePostBloc, RemovePostState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Chi tiết bài viết'),
              ),
              body: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        event.title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'By ${event.author} - ${event.date}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Image.asset(
                        getRandomImage(),
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        event.content,
                        style: const TextStyle(fontSize: 16),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          if (UserPrefs().getUser()?.isAdmin == true)
                            ElevatedButton(
                              onPressed: () => context
                                  .read<RemovePostBloc>()
                                  .remove(context, contextEventList),
                              child: const Text('Xóa'),
                            ),
                          if (UserPrefs().getUser()?.isAdmin == true)
                            ElevatedButton(
                              onPressed: () => XCoordinator.showPostUpdate(
                                  event, contextEventList),
                              child: const Text('Chỉnh sửa'),
                            ),
                        ],
                      )
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
