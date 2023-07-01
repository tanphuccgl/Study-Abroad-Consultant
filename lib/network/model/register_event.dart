// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:study_abroad_consultant/network/model/common/base_model.dart';

class RegisterEvent extends BaseModel {
  // ignore: annotate_overrides, overridden_fields
  final String id;
  final String name;
  final String email;
  final String phone;

  RegisterEvent({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
  });

  static RegisterEvent fromMap(Map map, {String? id}) {
    return RegisterEvent(
      id: id ?? map['id'],
      name: map['name'],
      email: map['email'],
      phone: map['phone'] ?? '',
    );
  }

  static RegisterEvent fromUserPrefs(Map map, {String? id}) {
    return RegisterEvent(
      id: id ?? map['id'],
      name: map['name'],
      email: map['email'],
      phone: map['phone'] ?? '',
    );
  }

  Map<String, dynamic> toUserPrefs() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "phone": phone,
    };
  }

  factory RegisterEvent.fromDocument(DocumentSnapshot document) {
    return RegisterEvent.fromMap(
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
    };
  }

  factory RegisterEvent.empty() => RegisterEvent(
        id: '',
        name: '',
        phone: "",
        email: "",
      );

  RegisterEvent copyWith({
    String? id,
    String? name,
    String? email,
    String? phone,
  }) {
    return RegisterEvent(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
    );
  }
}
