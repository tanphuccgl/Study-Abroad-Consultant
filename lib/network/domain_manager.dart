import 'package:study_abroad_consultant/network/data/advice/advice_repository.dart';
import 'package:study_abroad_consultant/network/data/advice/advice_repository_impl.dart';
import 'package:study_abroad_consultant/network/data/group/group_repository.dart';
import 'package:study_abroad_consultant/network/data/group/group_repository_impl.dart';
import 'package:study_abroad_consultant/network/data/event/event_repository.dart';
import 'package:study_abroad_consultant/network/data/event/event_repository_impl.dart';
import 'package:study_abroad_consultant/network/data/post/post_repository.dart';
import 'package:study_abroad_consultant/network/data/post/post_repository_impl.dart';
import 'package:study_abroad_consultant/network/data/register/register_repository.dart';
import 'package:study_abroad_consultant/network/data/register/register_repository_impl.dart';
import 'package:study_abroad_consultant/network/data/student/student_repository.dart';
import 'package:study_abroad_consultant/network/data/student/student_repository_impl.dart';
import 'package:study_abroad_consultant/network/data/user/user_repository_impl.dart';

import 'data/user/user_repository.dart';

class Domain {
  late UserRepository userRepository;
  late StudentRepository studentRepository;
  late GroupRepository groupRepository;
  late EventRepository eventRepository;
  late PostRepository postRepository;
  late RegisterRepository registerRepository;
  late AdviceRepository adviceRepository;

  Domain() {
    userRepository = UserRepositoryImpl();
    studentRepository = StudentRepositoryImpl();
    groupRepository = GroupRepositoryImpl();
    eventRepository = EventRepositoryImpl();
    postRepository = PostRepositoryImpl();
    registerRepository = RegisterRepositoryImpl();
    adviceRepository = AdviceRepositoryImpl();
  }
}
