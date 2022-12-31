import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyFirstScreen extends StatelessWidget {
  const MyFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Map<String, dynamic> data = {
                    'age': 10,
                    'job': 'Flutter Developer',
                    'name': 'John',
                  };
                  context.push('/second-screen', extra: data);
                },
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                        Size(MediaQuery.of(context).size.width - 50, 50))),
                child: const Text('Navigate To Secon Screen')),
          ),
        ],
      ),
    );
  }
}
