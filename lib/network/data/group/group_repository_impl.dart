import 'package:study_abroad_consultant/network/data/group/group_repository.dart';
import 'package:study_abroad_consultant/network/firestore/reference/group_collection_reference.dart';
import 'package:study_abroad_consultant/network/model/common/result.dart';
import 'package:study_abroad_consultant/network/model/group.dart';

class GroupRepositoryImpl extends GroupRepository {
  final reference = GroupCollectionReference();

  @override
  Future<XResult<bool>> postGroup(WGroup group) {
    return reference.postWGroup(group);
  }

  @override
  Future<XResult<List<WGroup>>> getListGroup() {
    return reference.getListGroup();
  }

  @override
  Future<XResult<WGroup>> getInfoGroup(String id) {
    return reference.getInfoGroup(id);
  }

  @override
  Future<XResult<bool>> removeGroup(String id) {
    return reference.removeWGroup(id);
  }
}
