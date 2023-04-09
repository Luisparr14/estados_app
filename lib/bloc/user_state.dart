part of 'user_cubit.dart';

@immutable
abstract class UserState {}

class InitialUser extends UserState {
  final userExiste = false;
}
