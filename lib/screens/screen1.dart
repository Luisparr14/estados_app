import 'package:estados_app/bloc/user_cubit.dart';
import 'package:estados_app/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: BlocBuilder<UserCubit, UserState>(
        builder: (_, state) {
          if (state is InitialUser) {
            return const Center(
              child: Text('User Destn exists'),
            );
          } else if (state is ActiveUser) {
            return UserInfomation(user: state.user);
          }

          return const Center(
            child: Text('No state recognocied'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, 'screen2'),
          child: const Icon(Icons.ac_unit)),
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
          ListTile(title: Text('Edad : ${user.age}')),
          const Text('Profesiones',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          const Divider(),
          ...user.professions.map((e) => ListTile(title: Text(e)))
        ],
      ),
    );
  }
}
