import 'package:study_abroad_consultant/network/data/post/post_repository.dart';

import 'package:study_abroad_consultant/network/firestore/reference/post_collection_reference.dart';

import 'package:study_abroad_consultant/network/model/common/result.dart';
import 'package:study_abroad_consultant/network/model/post.dart';

class PostRepositoryImpl extends PostRepository {
  final reference = PostCollectionReference();

  @override
  Future<XResult<bool>> postGroup(Post group) {
    return reference.postWGroup(group);
  }

  @override
  Future<XResult<List<Post>>> getListGroup() {
    return reference.getListGroup();
  }

  @override
  Future<XResult<Post>> getInfoGroup(String id) {
    return reference.getInfoGroup(id);
  }

  @override
  Future<XResult<bool>> removeGroup(String id) {
    return reference.removeWGroup(id);
  }
}
