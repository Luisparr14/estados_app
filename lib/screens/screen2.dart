import 'package:flutter/material.dart';


class Screen2 extends StatelessWidget {
const Screen2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(onPressed: ()=>{}, child: const Text('Set User'), color: Colors.blue),
            MaterialButton(onPressed: ()=>{}, child: const Text('Set Age'), color: Colors.blue),
            MaterialButton(onPressed: ()=>{}, child: const Text('Set Profesion'), color: Colors.blue),
          ],
           ),
      ),
   );
  }
}