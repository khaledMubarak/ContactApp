
import 'package:contact_app/model/contact_item.dart';
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
     List<ContactItem>contacts=[];
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
                           contacts.add(ContactItem(contactNumber: TextEditingController(text: contactNumber.text), contactName: TextEditingController(text: contactName.text),));
                           setState(() {
                              
                            });
                            contactNumber.clear();
                            contactName.clear();
                          },
                          style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
                          child: const Text('Add'))),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            if(contacts.isNotEmpty) contacts.removeLast();
                            setState(() {
                              
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                              backgroundColor: Colors.red),
                          child: const Text('Delete'))),
                ],
              ),
              SizedBox(height: height*0.02,),
               Expanded(
              child: ListView.builder(

                    itemBuilder: (_, index)=> ContactCard(controller: contacts[index], height: height) ,
                    itemCount: contacts.length,
                    physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
                    )
                    )

            ],
          ),
        ));
  }
}

