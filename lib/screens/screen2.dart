import 'package:estados_app/controller/user_controller.dart';
import 'package:estados_app/models/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});
  @override
  Widget build(BuildContext context) {
    final userCrtl = Get.find<UserController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                onPressed: () {
                  final newUser = User(name: "Luis", age: 23, professions: []);
                  userCrtl.setUser(newUser);
                },
                color: Colors.blue,
                child: const Text('Set User')),
            MaterialButton(
                onPressed: () => userCrtl.changeAge(24),
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
