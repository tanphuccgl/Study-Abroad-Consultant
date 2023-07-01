import 'package:study_abroad_consultant/network/data/group/group_repository.dart';
import 'package:study_abroad_consultant/network/data/group/group_repository_impl.dart';
import 'package:study_abroad_consultant/network/data/nation/event_repository.dart';
import 'package:study_abroad_consultant/network/data/nation/event_repository_impl.dart';
import 'package:study_abroad_consultant/network/data/student/student_repository.dart';
import 'package:study_abroad_consultant/network/data/student/student_repository_impl.dart';
import 'package:study_abroad_consultant/network/data/user/user_repository_impl.dart';

import 'data/user/user_repository.dart';

class Domain {
  late UserRepository userRepository;
  late StudentRepository studentRepository;
  late GroupRepository groupRepository;
  late EventRepository eventRepository;

  Domain() {
    userRepository = UserRepositoryImpl();
    studentRepository = StudentRepositoryImpl();
    groupRepository = GroupRepositoryImpl();
    eventRepository = EventRepositoryImpl();
  }
}
