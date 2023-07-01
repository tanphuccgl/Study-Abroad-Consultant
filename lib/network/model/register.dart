// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:study_abroad_consultant/network/model/common/base_model.dart';

class Register extends BaseModel {
  // ignore: annotate_overrides, overridden_fields
  final String id;
  final String name;
  final String email;
  final String phone;
  final String location;
  final String nation;
  final String school;
  final String majors;
  final String target;
  final String experience;
  final String opinion;
  Register({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.location,
    required this.nation,
    required this.school,
    required this.majors,
    required this.target,
    required this.experience,
    required this.opinion,
  });

  static Register fromMap(Map map, {String? id}) {
    return Register(
      id: id ?? map['id'],
      name: map['name'],
      email: map['email'],
      phone: map['phone'] ?? '',
      location: map['location'] ?? '',
      nation: map['nation'] ?? '',
      school: map['school'] ?? '',
      majors: map['majors'] ?? "",
      target: map['target'] ?? '',
      experience: map['experience'] ?? '',
      opinion: map['opinion'] ?? "",
    );
  }

  static Register fromUserPrefs(Map map, {String? id}) {
    return Register(
      id: id ?? map['id'],
      name: map['name'],
      email: map['email'],
      phone: map['phone'] ?? '',
      location: map['location'] ?? '',
      nation: map['nation'] ?? '',
      school: map['school'] ?? '',
      majors: map['majors'] ?? "",
      target: map['target'] ?? '',
      experience: map['experience'] ?? '',
      opinion: map['opinion'] ?? "",
    );
  }

  Map<String, dynamic> toUserPrefs() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "phone": phone,
      "location": location,
      "nation": nation,
      "school": school,
      "majors": majors,
      "target": target,
      "experience": experience,
      "opinion": opinion,
    };
  }

  factory Register.fromDocument(DocumentSnapshot document) {
    return Register.fromMap(
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
      "location": location,
      "nation": nation,
      "school": school,
      "majors": majors,
      "target": target,
      "experience": experience,
      "opinion": opinion,
    };
  }

  factory Register.empty() => Register(
        id: '',
        name: '',
        phone: "",
        email: "",
        experience: "",
        location: "",
        majors: "",
        nation: "",
        opinion: "",
        school: "",
        target: "",
      );

  Register copyWith({
    String? id,
    String? name,
    String? email,
    String? phone,
    String? location,
    String? nation,
    String? school,
    String? majors,
    String? target,
    String? experience,
    String? opinion,
  }) {
    return Register(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      location: location ?? this.location,
      nation: nation ?? this.nation,
      school: school ?? this.school,
      majors: majors ?? this.majors,
      target: target ?? this.target,
      experience: experience ?? this.experience,
      opinion: opinion ?? this.opinion,
    );
  }
}
