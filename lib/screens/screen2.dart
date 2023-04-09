import 'package:estados_app/models/user.dart';
import 'package:estados_app/services/user_service.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: userService.userStream,
        builder: (context, AsyncSnapshot<User> snapshot) {
          return Scaffold(
            appBar: AppBar(
              title: Text(snapshot.hasData ? snapshot.data?.name ?? '' : 'Screen 2'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                      onPressed: () {
                        final user =
                            User(name: 'Luis', age: 23, professions: []);
                        userService.setUser(user);
                      },
                      color: Colors.blue,
                      child: const Text('Set user')),
                  MaterialButton(
                      onPressed: () {
                        userService.setAge(24);
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
        });
  }
}
