import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:estados_app/controller/user_controller.dart';
import 'package:estados_app/models/user.dart';
import 'package:estados_app/screens/screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});
  @override
  Widget build(BuildContext context) {
    final userCrtl = Get.put(UserController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: Obx(() {
        return userCrtl.userExist.value
            ? UserInfomation(user: userCrtl.user.value)
            : const NoInfo();
      }),
      floatingActionButton: FloatingActionButton(
          // onPressed: () => Navigator.pushNamed(context, 'screen2'),
          onPressed: () => Get.to(const Screen2(), arguments: {"Name": "Luis"}),
          child: const Icon(Icons.ac_unit)),
    );
  }
}

class NoInfo extends StatelessWidget {
  const NoInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Center(
        child: Text('There are not user info'),
      ),
    );
  }
}

class UserInfomation extends StatelessWidget {
  final User user;

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
          ListTile(title: Text('Nombre: ${user.name}')),
          ListTile(title: Text('Edad: ${user.age}')),
          const Text('Profesiones',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          const Divider(),
          ...?user.professions?.map((profession) => ListTile(title: Text(profession))).toList()
        ],
      ),
    );
  }
}
