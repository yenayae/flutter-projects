import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contact.dart';

class ContactList extends StatefulWidget  {
  final List<Contact> contacts;

  ContactList({required this.contacts});

  @override
  _ContactListState createState() => _ContactListState();

}


class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text (
          'Contact List',
          style: const TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),

      body: Center(

        child: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: widget.contacts.length,
          itemBuilder: (BuildContext context, int index) {
            final contact = widget.contacts[index];
            return Container(

              height: 150,
              padding: EdgeInsets.all(10),
              color: Colors.black,
              margin: const EdgeInsets.only(bottom: 10),

              child: Row(

                children: [
                  Image.network(
                    contact.url,

                    width:200,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(contact.name,

                    style: const TextStyle(
                      color: Colors.white
                    ),



                  )
                ],

              )

            );

          },

        ),
      )

      ,



    );

  }
}

