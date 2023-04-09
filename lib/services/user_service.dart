import 'package:estados_app/models/user.dart';

class _UserService {
  User? _user;

  User? get user => _user;

  bool get userExist => _user != null;

  void setUser(User user) {
    _user = user;
  }
}

final userService = _UserService();
