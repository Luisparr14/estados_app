import 'package:flutter/material.dart';

import 'package:get/get_navigation/get_navigation.dart';

import 'package:estados_app/screens/screen1.dart';
import 'package:estados_app/screens/screen2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      initialRoute: 'screen1',
      getPages: [
        GetPage(name: '/screen1', page: () => const Screen1()),
        GetPage(name: '/screen2', page: () => const Screen2())
      ],
    );
  }
}