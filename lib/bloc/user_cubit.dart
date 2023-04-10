import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados_app/models/user.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(InitialUser());

  void setUser(User user) {
    emit(ActiveUser(user));
  }

  void setAge(int age) {
    final currentState = state;
    if (currentState is ActiveUser) {
      final newUser = currentState.user.copyWith(age: age);
      emit(ActiveUser(newUser));
    }
  }
}
