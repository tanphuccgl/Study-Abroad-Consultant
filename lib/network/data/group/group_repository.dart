import 'package:study_abroad_consultant/network/model/common/result.dart';
import 'package:study_abroad_consultant/network/model/group.dart';

abstract class GroupRepository {
  Future<XResult<bool>> postGroup(WGroup group);
  Future<XResult<List<WGroup>>> getListGroup();
  Future<XResult<WGroup>> getInfoGroup(String id);
  Future<XResult<bool>> removeGroup(String id);
}
