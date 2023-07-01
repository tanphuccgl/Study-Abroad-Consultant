import 'package:study_abroad_consultant/network/data/register/register_repository.dart';

import 'package:study_abroad_consultant/network/firestore/reference/register_collection_reference.dart';

import 'package:study_abroad_consultant/network/model/common/result.dart';
import 'package:study_abroad_consultant/network/model/register.dart';

class RegisterRepositoryImpl extends RegisterRepository {
  final reference = RegisterCollectionReference();

  @override
  Future<XResult<bool>> postGroup(Register group) {
    return reference.postWGroup(group);
  }

  @override
  Future<XResult<List<Register>>> getListGroup() {
    return reference.getListGroup();
  }

  @override
  Future<XResult<Register>> getInfoGroup(String id) {
    return reference.getInfoGroup(id);
  }

  @override
  Future<XResult<bool>> removeGroup(String id) {
    return reference.removeWGroup(id);
  }
}
