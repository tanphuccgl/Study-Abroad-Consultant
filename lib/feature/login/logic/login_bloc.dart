import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:study_abroad_consultant/network/domain_manager.dart';
import 'package:study_abroad_consultant/router/coordinator.dart';
import 'package:study_abroad_consultant/utils/toast_wrapper.dart';

part 'login_state.dart';

class LoginBloc extends Cubit<LoginState> {
  LoginBloc() : super(const LoginState());

  DomainManager get _domain => GetIt.I<DomainManager>();

  void onChangedEmail(String value) {
    emit(state.copyWith(email: value));
  }

  void onChangedPassword(String value) {
    emit(state.copyWith(password: value));
  }

  Future<void> onLogin(BuildContext context) async {
    XCoordinator.showDashboard();
    // emit(state.copyWith(isLoading: true));
    // if (state.email.isEmpty || state.password.isEmpty) {
    //   XToast.error("Error");

    //   emit(state.copyWith(isLoading: false));
    //   return;
    // }

    // final result = await _domain.userRepository.login(
    //   password: state.password,
    //   email: state.email,
    // );
    // if (result.isSuccess) {
    //   XCoordinator.showDashboard();
    // } else {
    //   XToast.error("Error");
    // }

    emit(state.copyWith(isLoading: false));
  }
}
