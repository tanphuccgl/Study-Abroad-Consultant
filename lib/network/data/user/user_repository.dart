import 'package:study_abroad_consultant/network/model/common/result.dart';
import 'package:study_abroad_consultant/network/model/user.dart';

abstract class UserRepository {
  Future<XResult<bool>> signIn(WUser user);
  Future<XResult<WUser>> login(
      {required String email, required String password});
}
