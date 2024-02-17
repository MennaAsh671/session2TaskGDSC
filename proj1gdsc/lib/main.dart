import 'package:flutter/material.dart';
import 'package:proj1gdsc/screens/contact_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: const Color(0xFF120822) ),
     home: ContactListScreen(),
    );
  }
}
