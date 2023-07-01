import 'package:study_abroad_consultant/network/model/common/result.dart';
import 'package:study_abroad_consultant/network/model/event.dart';

abstract class EventRepository {
  Future<XResult<bool>> postGroup(Event group);
  Future<XResult<List<Event>>> getListGroup();
  Future<XResult<Event>> getInfoGroup(String id);
  Future<XResult<bool>> removeGroup(String id);
}
