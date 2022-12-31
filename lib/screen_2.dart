import 'package:flutter/material.dart';

class MySecondScreen extends StatelessWidget {
  final String name;
  final int age;
  final String job;
  const MySecondScreen(
      {super.key, required this.name, required this.age, required this.job});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'My name is $name',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'My age is $age',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'My job is $job',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
