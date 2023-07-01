import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:study_abroad_consultant/network/domain_manager.dart';
import 'package:study_abroad_consultant/network/model/event.dart';
import 'package:study_abroad_consultant/utils/toast_wrapper.dart';

part "list_event_state.dart";

class ListEventBloc extends Cubit<ListEventState> {
  // ignore: prefer_const_constructors
  ListEventBloc() : super(ListEventState(const [])) {
    getList();
  }

  Domain get _domain => GetIt.I<Domain>();

  void getList() async {
    final value = await _domain.eventRepository.getListGroup();
    if (value.isSuccess) {
      emit(state.copyWith(events: value.data!));
    } else {
      XToast.error("lỗi");
    }
  }
}
