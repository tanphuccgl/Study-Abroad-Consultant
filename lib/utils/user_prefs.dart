import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:study_abroad_consultant/network/model/user.dart';

class UserPrefs {
  factory UserPrefs() => instance;
  UserPrefs._internal();

  static final UserPrefs instance = UserPrefs._internal();
  late SharedPreferences _prefs;
  Future initialize() async {
    _prefs = await SharedPreferences.getInstance();
  }

  WUser? getUser() {
    String? value = _prefs.getString("USER");
    if (value?.isNotEmpty == true && json.decode(value ?? '') != null) {
      Map map = json.decode(value!);
      return WUser.fromUserPrefs(map);
    }
    return null;
  }

  Future<void> saveUser(WUser? user) async {
    String value = json.encode(user?.toUserPrefs());
    _prefs.setString("USER", value);
  }

  String? get getUserID => getUser()?.id;
}
