import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_abroad_consultant/feature/my_user/router/profile_router.dart';

class MyUserWrapperPage extends StatelessWidget {
  const MyUserWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: (_) => context.read<MyUserCoordinator>(),
      child: context.read<MyUserCoordinator>().getNavigator(),
    );
  }
}
