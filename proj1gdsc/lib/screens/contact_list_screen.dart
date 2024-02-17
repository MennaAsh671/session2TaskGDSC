import 'package:flutter/material.dart';
import 'package:proj1gdsc/screens/widgets/contact_list_tile.dart';

import '../entities/contacts.dart';
import '../utils/generalutils.dart';

class ContactListScreen extends StatelessWidget {
  ContactListScreen({super.key});

  final List<Contact> mockContacts = Contact.getMockContactData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.keyboard_alt_outlined),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.settings),
        actions: const [
          Icon(Icons.person_add_alt_1_outlined),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContactListTile(
              contact: Contact(
                imageUrl: GeneralUtilities.getUniqueAvatarUrl(),
                name: "Menna",
                time: "6:22",
              ),
              isUser: true,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Contact",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            for (Contact contact in mockContacts) ...[
              ContactListTile(contact: contact),
            ],
          ],
        ),
      ),
    );
  }
}

//             for (Contact contact in mockContacts) ...[
//               ContactTile(contact: contact),
//               const SizedBox(height: 30,),
// ]

// 120822
