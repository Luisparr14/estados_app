import 'package:estados_app/bloc/user_cubit.dart';
import 'package:estados_app/screens/screen1.dart';
import 'package:estados_app/screens/screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Componentes App',
        initialRoute: 'screen1',
        routes: {
          'screen1': (_) => const Screen1(),
          'screen2': (_) => const Screen2()
        },
      ),
    );
  }
}