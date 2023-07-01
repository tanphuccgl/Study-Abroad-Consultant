import 'package:study_abroad_consultant/network/model/common/result.dart';
import 'package:study_abroad_consultant/network/model/register.dart';

abstract class RegisterRepository {
  Future<XResult<bool>> postGroup(Register group);
  Future<XResult<List<Register>>> getListGroup();
  Future<XResult<Register>> getInfoGroup(String id);
  Future<XResult<bool>> removeGroup(String id);
}
