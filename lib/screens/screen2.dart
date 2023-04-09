import 'package:estados_app/bloc/user_cubit.dart';
import 'package:estados_app/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});
  @override
  Widget build(BuildContext context) {
    final userCubit = context.watch<UserCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                onPressed: () {
                  final newUser = User(name: 'Luis', age: 23, professions: []);
                  userCubit.setUser(newUser);
                },
                color: Colors.blue,
                child: const Text('Set User')),
            MaterialButton(
                onPressed: () => {},
                color: Colors.blue,
                child: const Text('Set Age')),
            MaterialButton(
                onPressed: () => {},
                color: Colors.blue,
                child: const Text('Set Profesion')),
          ],
        ),
      ),
    );
  }
}
