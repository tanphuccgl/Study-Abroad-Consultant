import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:study_abroad_consultant/network/domain_manager.dart';
import 'package:study_abroad_consultant/network/model/register_event.dart';
import 'package:study_abroad_consultant/utils/toast_wrapper.dart';

part 'list_register_event_state.dart';

class ListRegisterEventBloc extends Cubit<ListRegisterEventState> {
  // ignore: prefer_const_constructors
  ListRegisterEventBloc() : super(ListRegisterEventState(const [])) {
    getList();
  }

  Domain get _domain => GetIt.I<Domain>();

  void getList() async {
    final value = await _domain.registerEventRepository.getListGroup();
    if (value.isSuccess) {
      emit(state.copyWith(events: value.data!));
    } else {
      XToast.error("lỗi");
    }
  }
}
