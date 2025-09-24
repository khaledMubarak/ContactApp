
import 'package:contact_app/widgets/contact_card.dart';
import 'package:contact_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
    final TextEditingController contactNumber=TextEditingController();
    final TextEditingController contactName=TextEditingController();
     List<ContactController>contacts=[];
  @override 
  Widget build(BuildContext context) {
    final double height= MediaQuery.of(context).size.height;
    
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
            title: const Text(
              'Contact App',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
               CustomTextField(hintText: 'Enter the phone name', customIcon: Icons.person_add, controller: contactName,),
               const SizedBox(height: 8,),
               CustomTextField(hintText: 'Enter the phone number', customIcon: Icons.phone_enabled_rounded, controller: contactNumber,),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                           contacts.add(ContactController(contactNumber: TextEditingController(text: contactNumber.text), contactName: TextEditingController(text: contactName.text),));
                           setState(() {
                              
                            });
                            contactNumber.clear();
                            contactName.clear();
                          },
                          style: ElevatedButton.styleFrom(),
                          child: const Text('Add'))),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            contacts.isEmpty? null: contacts.removeLast();
                            setState(() {
                              
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red),
                          child: const Text('Delete'))),
                ],
              ),
              SizedBox(height: height*0.02,),
               Expanded(
              child: ListView(
                children: contacts
                    .map((c) => Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: ContactCard(
                            controller: c,
                            height: height,
                            isVisible: true,
                          ),
                        )
                        )
                    .toList(),
                    )
                    )

            ],
          ),
        ));
  }
}

class ContactController{
  final TextEditingController contactNumber;
  final TextEditingController contactName;

  const ContactController({required this.contactNumber, required this.contactName});

}