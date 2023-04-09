import 'dart:async';

import 'package:estados_app/models/user.dart';

class _UserService {
  late User _user;
  User get user => _user;

  final StreamController<User> userSteamController =
      StreamController<User>.broadcast();

  Stream<User> get userStream => userSteamController.stream;

  bool get userExist => userSteamController.hasListener;

  void setUser(User user) {
    _user = user;
    userSteamController.add(user);
  }

  void setAge(int age) {
    _user.age = age;
    userSteamController.add(_user);
  }
}

final userService = _UserService();
