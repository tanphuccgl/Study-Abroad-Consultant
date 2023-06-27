import 'package:study_abroad_consultant/network/data/group/group_repository.dart';
import 'package:study_abroad_consultant/network/data/group/group_repository_impl.dart';
import 'package:study_abroad_consultant/network/data/nation/nation_repository.dart';
import 'package:study_abroad_consultant/network/data/nation/nation_repository_impl.dart';
import 'package:study_abroad_consultant/network/data/student/student_repository.dart';
import 'package:study_abroad_consultant/network/data/student/student_repository_impl.dart';
import 'package:study_abroad_consultant/network/data/user/user_repository_impl.dart';

import 'data/user/user_repository.dart';

class DomainManager {
  late UserRepository userRepository;
  late StudentRepository studentRepository;
  late GroupRepository groupRepository;
  late NationRepository nationRepository;

  DomainManager() {
    userRepository = UserRepositoryImpl();
    studentRepository = StudentRepositoryImpl();
    groupRepository = GroupRepositoryImpl();
    nationRepository = NationRepositoryImpl();
  }
}
