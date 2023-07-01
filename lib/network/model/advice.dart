// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:study_abroad_consultant/network/model/common/base_model.dart';

class Advice extends BaseModel {
  // ignore: annotate_overrides, overridden_fields
  final String id;
  final String name;
  final String email;
  final String phone;
  final String content;

  Advice({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.content,
  });

  static Advice fromMap(Map map, {String? id}) {
    return Advice(
      id: id ?? map['id'],
      name: map['name'],
      email: map['email'],
      phone: map['phone'] ?? '',
      content: map['content'] ?? '',
    );
  }

  static Advice fromUserPrefs(Map map, {String? id}) {
    return Advice(
      id: id ?? map['id'],
      name: map['name'],
      email: map['email'],
      phone: map['phone'] ?? '',
      content: map['content'] ?? '',
    );
  }

  Map<String, dynamic> toUserPrefs() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "phone": phone,
      "content": content,
    };
  }

  factory Advice.fromDocument(DocumentSnapshot document) {
    return Advice.fromMap(
      document.data() as Map<String, dynamic>,
      id: document.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "phone": phone,
      "content": content,
    };
  }

  factory Advice.empty() => Advice(
        id: '',
        name: '',
        phone: "",
        email: "",
        content: "",
      );

  Advice copyWith({
    String? id,
    String? name,
    String? email,
    String? phone,
    String? content,
  }) {
    return Advice(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      content: content ?? this.content,
    );
  }
}
