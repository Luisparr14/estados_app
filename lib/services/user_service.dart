import 'dart:async';

import 'package:estados_app/models/user.dart';

class _UserService {
  late User _user;
  User get user => _user;

  final StreamController<User> _userSteamController = StreamController<User>();

  Stream<User> get userStream => _userSteamController.stream;

  bool get userExist => _userSteamController.hasListener;

  void setUser(User user) {
    _user = user;
    _userSteamController.add(user);
  }

  void setAge(int age) {
    _user.age = age;
    _userSteamController.add(_user);
  }
}

final userService = _UserService();
