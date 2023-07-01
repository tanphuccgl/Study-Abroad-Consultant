// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:study_abroad_consultant/feature/post/logic/create_post_bloc.dart';
import 'package:study_abroad_consultant/feature/post/logic/list_post_bloc.dart';
import 'package:study_abroad_consultant/widgets/input.dart';

class CreatePostPage extends StatelessWidget {
  final BuildContext contextEventList;
  const CreatePostPage({
    Key? key,
    required this.contextEventList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: contextEventList.read<ListPostBloc>(),
      child: BlocProvider(
        create: (context) => CreatePostBloc(),
        child: BlocBuilder<CreatePostBloc, CreatePostState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Tạo bài viết'),
              ),
              body: Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      XInput(
                        value: state.title,
                        hintText: "Tên bài viết",
                        onChanged: (value) => context
                            .read<CreatePostBloc>()
                            .onChangedTitle(value),
                      ),
                      XInput(
                        value: state.des,
                        hintText: "Tác giả",
                        onChanged: (value) =>
                            context.read<CreatePostBloc>().onChangedDes(value),
                      ),
                      XInput(
                        value: state.date,
                        hintText: "Ngày diễn ra",
                        onChanged: (value) =>
                            context.read<CreatePostBloc>().onChangedDate(value),
                      ),
                      XInput(
                        value: state.location,
                        hintText: "Nội dung",
                        onChanged: (value) => context
                            .read<CreatePostBloc>()
                            .onChangedLocation(value),
                      ),
                      const SizedBox(height: 32),
                      ElevatedButton(
                        onPressed: () => context
                            .read<CreatePostBloc>()
                            .onCreateButton(context, contextEventList),
                        child: const Text('Tạo bài viết'),
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
