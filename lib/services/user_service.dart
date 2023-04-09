import 'package:estados_app/models/user.dart';

class _UserService {
  User? _user;

  User? get user => _user;

  bool get userExist => _user != null;

  void setUser(User user) {
    _user = user;
  }

  void setAge(int age) {
    _user?.age = age;
  }
}

final userService = _UserService();
