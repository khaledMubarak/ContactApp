import 'package:contact_app/contact_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ContactApp());
}

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contact App',
      debugShowCheckedModeBanner: false,
      
      home: ContactScreen()
    );
  }
}
