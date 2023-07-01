import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:study_abroad_consultant/network/domain_manager.dart';
import 'package:study_abroad_consultant/network/model/post.dart';
import 'package:study_abroad_consultant/utils/toast_wrapper.dart';

part 'list_post_state.dart';

class ListPostBloc extends Cubit<ListPostState> {
  // ignore: prefer_const_constructors
  ListPostBloc() : super(ListPostState(const [])) {
    getList();
  }

  Domain get _domain => GetIt.I<Domain>();

  void getList() async {
    final value = await _domain.postRepository.getListGroup();
    if (value.isSuccess) {
      emit(state.copyWith(events: value.data!));
    } else {
      XToast.error("lỗi");
    }
  }
}
