import 'package:study_abroad_consultant/network/model/common/result.dart';
import 'package:study_abroad_consultant/network/model/register_event.dart';

abstract class RegisterEventRepository {
  Future<XResult<bool>> postGroup(RegisterEvent group);
  Future<XResult<List<RegisterEvent>>> getListGroup();
  Future<XResult<RegisterEvent>> getInfoGroup(String id);
  Future<XResult<bool>> removeGroup(String id);
}
