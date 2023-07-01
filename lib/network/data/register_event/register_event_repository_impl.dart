import 'package:study_abroad_consultant/network/data/register_event/register_event_repository.dart';
import 'package:study_abroad_consultant/network/firestore/reference/register_event_collection_reference.dart';

import 'package:study_abroad_consultant/network/model/common/result.dart';
import 'package:study_abroad_consultant/network/model/register_event.dart';

class RegisterEventRepositoryImpl extends RegisterEventRepository {
  final reference = RegisterEventCollectionReference();

  @override
  Future<XResult<bool>> postGroup(RegisterEvent group) {
    return reference.postWGroup(group);
  }

  @override
  Future<XResult<List<RegisterEvent>>> getListGroup() {
    return reference.getListGroup();
  }

  @override
  Future<XResult<RegisterEvent>> getInfoGroup(String id) {
    return reference.getInfoGroup(id);
  }

  @override
  Future<XResult<bool>> removeGroup(String id) {
    return reference.removeWGroup(id);
  }
}
