import 'package:study_abroad_consultant/network/model/common/result.dart';
import 'package:study_abroad_consultant/network/model/post.dart';

abstract class PostRepository {
  Future<XResult<bool>> postGroup(Post group);
  Future<XResult<List<Post>>> getListGroup();
  Future<XResult<Post>> getInfoGroup(String id);
  Future<XResult<bool>> removeGroup(String id);
}
