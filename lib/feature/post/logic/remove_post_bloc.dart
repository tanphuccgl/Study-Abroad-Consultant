// ignore_for_file: use_build_context_synchronously

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:study_abroad_consultant/feature/post/logic/list_post_bloc.dart';
import 'package:study_abroad_consultant/network/domain_manager.dart';
import 'package:study_abroad_consultant/network/model/post.dart';
import 'package:study_abroad_consultant/utils/toast_wrapper.dart';

part "remove_post_state.dart";

class RemovePostBloc extends Cubit<RemovePostState> {
  final String id;
  // ignore: prefer_const_constructors
  RemovePostBloc(this.id) : super(RemovePostState(const []));

  Domain get _domain => GetIt.I<Domain>();

  void remove(BuildContext context, BuildContext contextEventList) async {
    final value = await _domain.postRepository.removeGroup(id);
    if (value.isSuccess) {
      XToast.success("thành công");
      contextEventList.read<ListPostBloc>().getList();
      Navigator.pop(context);
    } else {
      XToast.error("lỗi");
      Navigator.pop(context);
    }
  }
}
