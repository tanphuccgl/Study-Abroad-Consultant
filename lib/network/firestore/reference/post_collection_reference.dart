import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:study_abroad_consultant/network/model/common/result.dart';
import 'package:study_abroad_consultant/network/model/post.dart';

import 'base_collection_reference.dart';

class PostCollectionReference extends BaseCollectionReference<Post> {
  PostCollectionReference()
      : super(
          FirebaseFirestore.instance.collection("posts").withConverter<Post>(
                fromFirestore: ((snapshot, _) => Post.fromDocument(snapshot)),
                toFirestore: (model, _) => model.toMap(),
              ),
        );

  Future<XResult<bool>> postWGroup(Post group) async {
    try {
      final userCollection = ref.doc(group.id);
      await userCollection.set(group);

      return XResult.success(true);
    } catch (e) {
      return XResult.exception(e);
    }
  }

  Future<XResult<List<Post>>> getListGroup() async {
    try {
      final userCollection = await ref.get();
      final list = userCollection.docs.map((e) => e.data()).toList();

      return XResult.success(list);
    } catch (e) {
      return XResult.exception(e);
    }
  }

  Future<XResult<Post>> getInfoGroup(String id) async {
    try {
      var snapshot = await ref.where('id', isEqualTo: id).limit(1).get();
      final result = snapshot.docs.map((e) => e.data()).first;

      return XResult.success(result);
    } catch (e) {
      return XResult.exception(e);
    }
  }

  Future<XResult<bool>> removeWGroup(String id) async {
    try {
      remove(id);

      return XResult.success(true);
    } catch (e) {
      return XResult.exception(e);
    }
  }
}
