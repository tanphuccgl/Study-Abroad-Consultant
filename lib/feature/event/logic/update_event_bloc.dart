// ignore_for_file: use_build_context_synchronously

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:study_abroad_consultant/feature/event/logic/list_event_bloc.dart';
import 'package:study_abroad_consultant/network/domain_manager.dart';
import 'package:study_abroad_consultant/network/model/event.dart';
import 'package:study_abroad_consultant/utils/toast_wrapper.dart';

part "update_event_state.dart";

class UpdateEventBloc extends Cubit<UpdateEventState> {
  final Event event;
  UpdateEventBloc(this.event)
      : super(const UpdateEventState(
            date: "", des: "", location: "", title: "")) {
    init();
  }
  Domain get _domain => GetIt.I<Domain>();

  void init() {
    emit(state.copyWith(
        date: event.date,
        des: event.des,
        location: event.location,
        title: event.title));
  }

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

    final result = await _domain.eventRepository.postGroup(Event(
        id: event.id,
        title: state.title,
        des: state.des,
        date: state.date,
        location: state.location));
    if (result.isSuccess) {
      XToast.success("thành công");
      contextEventList.read<ListEventBloc>().getList();
      Navigator.pop(context);
      Navigator.pop(context);
    } else {
      XToast.success("lỗi");
      Navigator.pop(context);
      Navigator.pop(context);
    }
  }
}
