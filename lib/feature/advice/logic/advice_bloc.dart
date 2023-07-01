// ignore_for_file: use_build_context_synchronously

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:study_abroad_consultant/network/domain_manager.dart';
import 'package:study_abroad_consultant/network/model/advice.dart';

import 'package:study_abroad_consultant/utils/toast_wrapper.dart';
import 'package:uuid/uuid.dart';

part 'advice_state.dart';

class AdviceBloc extends Cubit<AdviceState> {
  AdviceBloc()
      : super(const AdviceState(
          phone: "",
          email: "",
          content: "",
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

  void onChangedContent(String value) {
    emit(state.copyWith(content: value));
  }

  void onCreateButton(
    BuildContext context,
  ) async {
    if (state.name.isEmpty ||
        state.email.isEmpty ||
        state.phone.isEmpty ||
        state.content.isEmpty) {
      XToast.error("Lỗi");
      return;
    }

    final result = await _domain.adviceRepository.postGroup(Advice(
      id: const Uuid().v4(),
      name: state.name,
      email: state.email,
      phone: state.phone,
      content: state.content,
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
