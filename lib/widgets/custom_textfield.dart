import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData customIcon;
  final TextEditingController controller;

  const CustomTextField(
      {super.key, required this.hintText, required this.customIcon, required this.controller}
      );
 
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle(
        fontSize: 20,
      ),
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          filled: true,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          focusColor: Colors.red,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.black54,
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              customIcon,
              color: Colors.blue,
              size: 30,
            ),
          )),
    );
  }
}
