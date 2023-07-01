import 'package:study_abroad_consultant/network/data/event/event_repository.dart';

import 'package:study_abroad_consultant/network/firestore/reference/event_collection_reference.dart';

import 'package:study_abroad_consultant/network/model/common/result.dart';
import 'package:study_abroad_consultant/network/model/event.dart';

class EventRepositoryImpl extends EventRepository {
  final reference = EventCollectionReference();

  @override
  Future<XResult<bool>> postGroup(Event group) {
    return reference.postWGroup(group);
  }

  @override
  Future<XResult<List<Event>>> getListGroup() {
    return reference.getListGroup();
  }

  @override
  Future<XResult<Event>> getInfoGroup(String id) {
    return reference.getInfoGroup(id);
  }

  @override
  Future<XResult<bool>> removeGroup(String id) {
    return reference.removeWGroup(id);
  }
}
