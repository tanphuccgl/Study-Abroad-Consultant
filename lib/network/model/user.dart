import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:study_abroad_consultant/network/model/common/base_model.dart';

class WUser extends BaseModel {
  // ignore: annotate_overrides, overridden_fields
  String id;

  String? username;
  String? email;
  String? password;
  bool isAdmin;

  WUser({
    required this.id,
    this.email,
    this.username,
    this.password,
    this.isAdmin = false,
  });

  static WUser fromMap(Map map, {String? id}) {
    return WUser(
      id: id ?? map['id'],
      email: map['email'],
      username: map['username'],
      password: map['password'] ?? '',
      isAdmin: map['isAdmin'] ?? '',
    );
  }

  static WUser fromUserPrefs(Map map, {String? id}) {
    return WUser(
      id: id ?? map['id'],
      email: map['email'],
      username: map['username'],
      password: map['password'] ?? '',
      isAdmin: map['isAdmin'] ?? '',
    );
  }

  Map<String, dynamic> toUserPrefs() {
    return {
      "id": id,
      "email": email,
      "username": username,
      "password": password,
      "isAdmin": isAdmin,
    };
  }

  factory WUser.fromDocument(DocumentSnapshot document) {
    return WUser.fromMap(
      document.data() as Map<String, dynamic>,
      id: document.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "email": email,
      "username": username,
      "password": password,
      "isAdmin": isAdmin,
    };
  }

  factory WUser.empty() => WUser(
        id: '',
        username: '',
        email: '',
        password: "",
        isAdmin: false,
      );

  WUser copyWith({
    String? id,
    String? password,
    String? username,
    String? email,
    bool? isAdmin,
  }) {
    return WUser(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      isAdmin: isAdmin ?? this.isAdmin,
    );
  }
}
