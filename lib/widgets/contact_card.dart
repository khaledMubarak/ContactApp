import 'package:contact_app/contact_screen.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final ContactController controller;
  final double height;
  final bool isVisible;

  const ContactCard({super.key, required this.controller, required this.height, required this.isVisible});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: height*0.19,
        width: double.infinity,
    
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Name : ${controller.contactName.text}',style: const TextStyle(fontSize: 20 )),
            Text('Phone : ${controller.contactNumber.text}',style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
