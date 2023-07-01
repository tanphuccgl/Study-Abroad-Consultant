import 'package:study_abroad_consultant/network/model/advice.dart';
import 'package:study_abroad_consultant/network/model/common/result.dart';

abstract class AdviceRepository {
  Future<XResult<bool>> postGroup(Advice group);
  Future<XResult<List<Advice>>> getListGroup();
  Future<XResult<Advice>> getInfoGroup(String id);
  Future<XResult<bool>> removeGroup(String id);
}
