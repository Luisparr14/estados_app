import 'package:flutter/material.dart';

import 'package:estados_app/models/user.dart';
import 'package:estados_app/services/user_service.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: StreamBuilder(
        stream: userService.userStream,
        builder: (context, AsyncSnapshot<User> snapshot) {
          return snapshot.hasData
              ? UserInfomation(user: userService.user)
              : const Center(child: Text('Info doest exist'));
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, 'screen2'),
          child: const Icon(Icons.ac_unit)),
    );
  }
}

class UserInfomation extends StatelessWidget {
  final User? user;

  const UserInfomation({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('General',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          const Divider(),
          ListTile(title: Text('Name: ${user?.name}')),
          ListTile(title: Text('Age: ${user?.age}')),
          const Text('Profesiones',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          const Divider(),
          const ListTile(title: Text('Profesion')),
          const ListTile(title: Text('Profesion')),
        ],
      ),
    );
  }
}
