// ignore_for_file: use_build_context_synchronously

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:study_abroad_consultant/network/domain_manager.dart';
import 'package:study_abroad_consultant/network/model/register_event.dart';

import 'package:study_abroad_consultant/utils/toast_wrapper.dart';
import 'package:uuid/uuid.dart';

part 'register_event_state.dart';

class RegisterEventBloc extends Cubit<RegisterEventState> {
  RegisterEventBloc()
      : super(const RegisterEventState(
          phone: "",
          email: "",
          name: "",
        ));
  Domain get _domain => GetIt.I<Domain>();

  void onChangedName(String value) {
    emit(state.copyWith(name: value));
  }

  void onChangedEmail(String value) {
    emit(state.copyWith(email: value));
  }

  void onChangedPhone(String value) {
    emit(state.copyWith(phone: value));
  }

  void onCreateButton(
    BuildContext context,
  ) async {
    if (state.name.isEmpty || state.email.isEmpty || state.phone.isEmpty) {
      XToast.error("Lỗi");
      return;
    }

    final result =
        await _domain.registerEventRepository.postGroup(RegisterEvent(
      id: const Uuid().v4(),
      name: state.name,
      email: state.email,
      phone: state.phone,
    ));
    if (result.isSuccess) {
      XToast.success("thành công");
      Navigator.pop(context);
    } else {
      XToast.success("lỗi");
      Navigator.pop(context);
    }
  }
}
