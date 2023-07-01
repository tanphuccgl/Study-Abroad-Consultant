// ignore_for_file: use_build_context_synchronously

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:study_abroad_consultant/network/domain_manager.dart';

import 'package:study_abroad_consultant/network/model/register.dart';
import 'package:study_abroad_consultant/utils/toast_wrapper.dart';
import 'package:uuid/uuid.dart';

part 'register_state.dart';

class RegisterBloc extends Cubit<RegisterState> {
  RegisterBloc()
      : super(const RegisterState(
          phone: "",
          email: "",
          location: "",
          name: "",
          experience: "",
          majors: "",
          nation: "",
          opinion: "",
          school: "",
          target: "",
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

  void onChangedLocation(String value) {
    emit(state.copyWith(location: value));
  }

  void onChangedNation(String value) {
    emit(state.copyWith(nation: value));
  }

  void onChangedSchool(String value) {
    emit(state.copyWith(school: value));
  }

  void onChangedMajors(String value) {
    emit(state.copyWith(majors: value));
  }

  void onChangedTarget(String value) {
    emit(state.copyWith(target: value));
  }

  void onChangedExperience(String value) {
    emit(state.copyWith(experience: value));
  }

  void onChangedOpinion(String value) {
    emit(state.copyWith(opinion: value));
  }

  void onCreateButton(
    BuildContext context,
  ) async {
    if (state.name.isEmpty ||
        state.email.isEmpty ||
        state.phone.isEmpty ||
        state.location.isEmpty ||
        state.nation.isEmpty ||
        state.majors.isEmpty ||
        state.school.isEmpty ||
        state.target.isEmpty ||
        state.opinion.isEmpty ||
        state.experience.isEmpty) {
      XToast.error("Lỗi");
      return;
    }

    final result = await _domain.registerRepository.postGroup(Register(
      id: const Uuid().v4(),
      name: state.name,
      email: state.email,
      school: state.school,
      experience: state.experience,
      location: state.location,
      majors: state.majors,
      nation: state.nation,
      opinion: state.opinion,
      phone: state.phone,
      target: state.target,
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
