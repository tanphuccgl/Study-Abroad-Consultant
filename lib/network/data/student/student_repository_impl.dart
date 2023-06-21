import 'package:study_abroad_consultant/network/data/student/student_repository.dart';
import 'package:study_abroad_consultant/network/firestore/reference/student_collection_reference.dart';
import 'package:study_abroad_consultant/network/model/common/result.dart';
import 'package:study_abroad_consultant/network/model/student.dart';

class StudentRepositoryImpl extends StudentRepository {
  final reference = StudentCollectionReference();

  @override
  Future<XResult<bool>> postStudent(WStudent student) {
    return reference.postStudent(student);
  }

  @override
  Future<XResult<List<WStudent>>> getListStudent() {
    return reference.getListStudent();
  }

  @override
  Future<XResult<WStudent>> getInfoStudent(String id) {
    return reference.getInfoStudent(id);
  }

  @override
  Future<XResult<bool>> removeStudent(String id) {
    return reference.removeStudent(id);
  }
}
