import 'package:study_abroad_consultant/network/data/advice/advice_repository.dart';
import 'package:study_abroad_consultant/network/firestore/reference/advice_collection_reference.dart';

import 'package:study_abroad_consultant/network/model/advice.dart';

import 'package:study_abroad_consultant/network/model/common/result.dart';

class AdviceRepositoryImpl extends AdviceRepository {
  final reference = AdviceCollectionReference();

  @override
  Future<XResult<bool>> postGroup(Advice group) {
    return reference.postWGroup(group);
  }

  @override
  Future<XResult<List<Advice>>> getListGroup() {
    return reference.getListGroup();
  }

  @override
  Future<XResult<Advice>> getInfoGroup(String id) {
    return reference.getInfoGroup(id);
  }

  @override
  Future<XResult<bool>> removeGroup(String id) {
    return reference.removeWGroup(id);
  }
}
