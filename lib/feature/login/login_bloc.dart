import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:study_abroad_consultant/network/domain_manager.dart';

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
    emit(state.copyWith(isLoading: true));
    if (state.email.isEmpty || state.password.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Error')));

      emit(state.copyWith(isLoading: false));
      return;
    }

    final result = await _domain.userRepository.login(
      password: state.password,
      email: state.email,
    );
    if (result.isSuccess) {
      //TODO
      // Navigator.push(context,
      //     MaterialPageRoute(builder: (context) => const HomePageScreen()));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Error')));
    }

    emit(state.copyWith(isLoading: false));
  }
}
