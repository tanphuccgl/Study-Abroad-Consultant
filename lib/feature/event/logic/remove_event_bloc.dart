// ignore_for_file: use_build_context_synchronously

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:study_abroad_consultant/feature/event/logic/list_event_bloc.dart';
import 'package:study_abroad_consultant/network/domain_manager.dart';
import 'package:study_abroad_consultant/network/model/event.dart';
import 'package:study_abroad_consultant/utils/toast_wrapper.dart';

part "remove_event_state.dart";

class RemoveEventBloc extends Cubit<RemoveEventState> {
  final String id;
  // ignore: prefer_const_constructors
  RemoveEventBloc(this.id) : super(RemoveEventState(const []));

  Domain get _domain => GetIt.I<Domain>();

  void remove(BuildContext context, BuildContext contextEventList) async {
    final value = await _domain.eventRepository.removeGroup(id);
    if (value.isSuccess) {
      XToast.success("thành công");
      contextEventList.read<ListEventBloc>().getList();
      Navigator.pop(context);
    } else {
      XToast.error("lỗi");
      Navigator.pop(context);
    }
  }
}
