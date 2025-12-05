import 'package:flutter/material.dart';

void main() => runApp(const HomeScreen());

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Habitos'),
          actions: [
            IconButton(onPressed: (){

            }, icon: Icon(Icons.add_box_rounded))
          ],
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      );
  }
}