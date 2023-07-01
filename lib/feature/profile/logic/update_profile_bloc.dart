import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:study_abroad_consultant/network/domain_manager.dart';
import 'package:study_abroad_consultant/network/model/user.dart';
import 'package:study_abroad_consultant/utils/toast_wrapper.dart';
import 'package:study_abroad_consultant/utils/user_prefs.dart';

part "update_profile_state.dart";

// ignore_for_file: use_build_context_synchronously

class UpdateProfileBloc extends Cubit<UpdateProfileState> {
  UpdateProfileBloc() : super(const UpdateProfileState());
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

  void onChangedUsernaeme(String value) {
    emit(state.copyWith(username: value));
  }

  void onCreateButton(
    BuildContext context,
  ) async {
    if (state.name.isEmpty ||
        state.email.isEmpty ||
        state.location.isEmpty ||
        state.username.isEmpty ||
        state.phone.isEmpty ||
        (UserPrefs().getUser()?.id ?? "").isEmpty) {
      XToast.error("Lỗi");
      return;
    }

    final result = await _domain.userRepository.signIn(WUser(
        id: UserPrefs().getUser()?.id ?? "",
        name: state.name,
        email: state.email,
        location: state.location,
        username: state.username,
        password: (UserPrefs().getUser()?.password ?? ""),
        isAdmin: UserPrefs().getUser()?.isAdmin == true,
        phone: state.phone));
    if (result.isSuccess) {
      XToast.success("thành công");

      final result = await _domain.userRepository.login(
        password: (UserPrefs().getUser()?.password ?? ""),
        email: state.email,
      );
      if (result.isSuccess) {
        await UserPrefs().saveUser(result.data);
        Navigator.pop(context);
        Navigator.pop(context);
      }
    } else {
      XToast.success("lỗi");
      Navigator.pop(context);
    }
  }
}
