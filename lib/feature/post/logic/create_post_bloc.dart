// ignore_for_file: use_build_context_synchronously

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:study_abroad_consultant/feature/post/logic/list_post_bloc.dart';
import 'package:study_abroad_consultant/network/domain_manager.dart';

import 'package:study_abroad_consultant/network/model/post.dart';
import 'package:study_abroad_consultant/utils/toast_wrapper.dart';
import 'package:uuid/uuid.dart';

part "create_post_state.dart";

class CreatePostBloc extends Cubit<CreatePostState> {
  CreatePostBloc()
      : super(
            const CreatePostState(date: "", des: "", location: "", title: ""));
  Domain get _domain => GetIt.I<Domain>();

  void onChangedTitle(String value) {
    emit(state.copyWith(title: value));
  }

  void onChangedDes(String value) {
    emit(state.copyWith(des: value));
  }

  void onChangedDate(String value) {
    emit(state.copyWith(date: value));
  }

  void onChangedLocation(String value) {
    emit(state.copyWith(location: value));
  }

  void onCreateButton(
      BuildContext context, BuildContext contextEventList) async {
    if (state.date.isEmpty ||
        state.des.isEmpty ||
        state.location.isEmpty ||
        state.title.isEmpty) {
      XToast.error("Lỗi");
      return;
    }

    final result = await _domain.postRepository.postGroup(Post(
        id: const Uuid().v4(),
        title: state.title,
        author: state.des,
        date: state.date,
        content: state.location));
    if (result.isSuccess) {
      XToast.success("thành công");
      contextEventList.read<ListPostBloc>().getList();
      Navigator.pop(context);
    } else {
      XToast.success("lỗi");
      Navigator.pop(context);
    }
  }
}
