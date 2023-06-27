import 'package:study_abroad_consultant/network/data/nation/nation_repository.dart';
import 'package:study_abroad_consultant/network/firestore/reference/nation_collection_reference.dart';
import 'package:study_abroad_consultant/network/model/common/result.dart';
import 'package:study_abroad_consultant/network/model/nation.dart';

class NationRepositoryImpl extends NationRepository {
  final reference = NationCollectionReference();

  @override
  Future<XResult<bool>> postGroup(WNation group) {
    return reference.postWGroup(group);
  }

  @override
  Future<XResult<List<WNation>>> getListGroup() {
    return reference.getListGroup();
  }

  @override
  Future<XResult<WNation>> getInfoGroup(String id) {
    return reference.getInfoGroup(id);
  }

  @override
  Future<XResult<bool>> removeGroup(String id) {
    return reference.removeWGroup(id);
  }
}
