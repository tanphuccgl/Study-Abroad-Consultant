import 'package:study_abroad_consultant/network/model/common/result.dart';
import 'package:study_abroad_consultant/network/model/student.dart';

abstract class StudentRepository {
  Future<XResult<bool>> postStudent(WStudent student);
  Future<XResult<List<WStudent>>> getListStudent();
  Future<XResult<WStudent>> getInfoStudent(String id);
  Future<XResult<bool>> removeStudent(String id);
}
