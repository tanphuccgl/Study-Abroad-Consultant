// ignore_for_file: public_member_api_docs, sort_constructors_first, annotate_overrides
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:study_abroad_consultant/network/model/common/base_model.dart';

class Post extends BaseModel {
  // ignore: annotate_overriauthor, overridden_fields
  String id;
  String title;
  String author;
  String date;
  String content;

  Post({
    required this.id,
    required this.title,
    required this.author,
    required this.date,
    required this.content,
  });

  static Post fromMap(Map map, {String? id}) {
    return Post(
      id: id ?? map['id'],
      title: map['title'],
      author: map['author'],
      date: map['date'],
      content: map['content'],
    );
  }

  static Post fromUserPrefs(Map map, {String? id}) {
    return Post(
      id: id ?? map['id'],
      title: map['title'],
      author: map['author'],
      date: map['date'],
      content: map['content'],
    );
  }

  Map<String, dynamic> toUserPrefs() {
    return {
      "id": id,
      "title": title,
      "author": author,
      "date": date,
      "content": content,
    };
  }

  factory Post.fromDocument(DocumentSnapshot document) {
    return Post.fromMap(
      document.data() as Map<String, dynamic>,
      id: document.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "author": author,
      "date": date,
      "content": content,
    };
  }

  factory Post.empty() => Post(
        id: '',
        title: '',
        author: "",
        date: '',
        content: "",
      );

  Post copyWith({
    String? id,
    String? title,
    String? author,
    String? date,
    String? content,
  }) {
    return Post(
      id: id ?? this.id,
      title: title ?? this.title,
      author: author ?? this.author,
      date: date ?? this.date,
      content: content ?? this.content,
    );
  }
}
