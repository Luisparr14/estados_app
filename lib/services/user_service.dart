import 'package:estados_app/models/user.dart';
import 'package:flutter/material.dart';

class UserService with ChangeNotifier {
  User? _user;

  User? get getUser => _user;

  bool get userExist => getUser != null;

  void setUser(User user) {
    _user = user;
    notifyListeners();
  }

  void setAge(int age) {
    _user?.age = age;
    notifyListeners();
  }

  void deleteUser() {
    _user = null;
    notifyListeners();
  }

  void addPrefesion() {
    _user?.professions.add('Profesion #${_user!.professions.length + 1}');
    notifyListeners();
  }
}
