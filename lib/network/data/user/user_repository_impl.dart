import 'package:study_abroad_consultant/network/data/user/user_repository.dart';
import 'package:study_abroad_consultant/network/firestore/reference/user_collection_reference.dart';
import 'package:study_abroad_consultant/network/model/common/result.dart';
import 'package:study_abroad_consultant/network/model/user.dart';

class UserRepositoryImpl extends UserRepository {
  final reference = UserCollectionReference();

  @override
  Future<XResult<bool>> signIn(WUser user) {
    return reference.signIn(user);
  }

  @override
  Future<XResult<WUser>> login(
      {required String email, required String password}) {
    return reference.login(email: email, password: password);
  }
}
