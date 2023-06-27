import 'package:study_abroad_consultant/network/model/common/result.dart';
import 'package:study_abroad_consultant/network/model/nation.dart';

abstract class NationRepository {
  Future<XResult<bool>> postGroup(WNation group);
  Future<XResult<List<WNation>>> getListGroup();
  Future<XResult<WNation>> getInfoGroup(String id);
  Future<XResult<bool>> removeGroup(String id);
}
