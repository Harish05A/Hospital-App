import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.lightBlue,
            height: 250,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hi Edi!"),
                Text("Let's find \nyour top doctor!"),
              ],
            )));
  }
}
