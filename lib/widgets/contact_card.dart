import 'package:contact_app/model/contact_item.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final ContactItem controller;
  final double height;
  

  const ContactCard({super.key, required this.controller, required this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
