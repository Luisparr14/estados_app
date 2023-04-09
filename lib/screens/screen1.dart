import 'package:estados_app/models/user.dart';
import 'package:estados_app/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});
  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: userService.userExist
          ? UserInfomation(user: userService.getUser as User)
          : const Center(child: Text('User doest exist')),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, 'screen2'),
          child: const Icon(Icons.ac_unit)),
    );
  }
}

class UserInfomation extends StatelessWidget {
  final User user;

  const UserInfomation({
    super.key, required this.user,
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
          ListTile(title: Text('Nombre: ${user.name}')),
          ListTile(title: Text('Edad: ${user.age}')),
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
