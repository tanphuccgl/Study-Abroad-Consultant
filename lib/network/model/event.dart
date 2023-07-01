// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:study_abroad_consultant/network/model/common/base_model.dart';

class Event extends BaseModel {
  // ignore: annotate_overrides, overridden_fields
  String id;
  String title;
  String des;
  String date;
  String location;

  Event({
    required this.id,
    required this.title,
    required this.des,
    required this.date,
    required this.location,
  });

  static Event fromMap(Map map, {String? id}) {
    return Event(
      id: id ?? map['id'],
      title: map['title'],
      des: map['des'],
      date: map['date'],
      location: map['location'],
    );
  }

  static Event fromUserPrefs(Map map, {String? id}) {
    return Event(
      id: id ?? map['id'],
      title: map['title'],
      des: map['des'],
      date: map['date'],
      location: map['location'],
    );
  }

  Map<String, dynamic> toUserPrefs() {
    return {
      "id": id,
      "title": title,
      "des": des,
      "date": date,
      "location": location,
    };
  }

  factory Event.fromDocument(DocumentSnapshot document) {
    return Event.fromMap(
      document.data() as Map<String, dynamic>,
      id: document.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "des": des,
      "date": date,
      "location": location,
    };
  }

  factory Event.empty() => Event(
        id: '',
        title: '',
        des: "",
        date: '',
        location: "",
      );

  Event copyWith({
    String? id,
    String? title,
    String? des,
    String? date,
    String? location,
  }) {
    return Event(
      id: id ?? this.id,
      title: title ?? this.title,
      des: des ?? this.des,
      date: date ?? this.date,
      location: location ?? this.location,
    );
  }
}
