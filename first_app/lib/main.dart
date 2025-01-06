import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First App'),
        ),
        backgroundColor: Color.fromARGB(255, 0, 208, 255),
        body: const GradientContainer(),
      ),
    );
  }
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 0, 21, 139),
          Color.fromARGB(255, 0, 121, 213)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello Hilal!',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            Text(
              'It\'s time to learn Flutter!',
              style: TextStyle(color: Colors.white, fontSize: 28.0),
            ),
          ],
        ),
      ),
    );
  }
}
