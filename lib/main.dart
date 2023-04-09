import 'package:estados_app/screens/screen1.dart';
import 'package:estados_app/screens/screen2.dart';
import 'package:estados_app/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserService())
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