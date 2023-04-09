import 'package:estados_app/models/user.dart';
import 'package:estados_app/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});
  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);

    return Scaffold(
      appBar: AppBar(
        title: userService.userExist
            ? Text(userService.getUser?.name ?? 'No user')
            : const Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                onPressed: () {
                  User user = User(name: 'Luis', age: 34, professions: []);
                  userService.setUser(user);
                },
                color: Colors.blue,
                child: const Text('Set User')),
            MaterialButton(
                onPressed: () {
                  userService.setAge(20);
                },
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
