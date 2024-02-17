import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("Test App"),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: const Center(
        child:
        Row(
         children:[
           Text("")
        ]
      ),)
    );
  }
}

