part of 'user_cubit.dart';

@immutable
abstract class UserState {}

class InitialUser extends UserState {
  final userExist = false;
}

class ActiveUser implements UserState {
  final userExist = true;
  final User user;

  ActiveUser(this.user);
}
