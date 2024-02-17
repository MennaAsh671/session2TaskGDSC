import 'package:flutter/material.dart';

import '../../entities/contacts.dart';
import '../../utils/generalutils.dart';

class ContactTile extends StatelessWidget {
  final Contact contact;
  const ContactTile({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(GeneralUtilities.getUniqueAvatarUrl()),
          radius: 40,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              contact.name,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const Text(
              "0x1227857548",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            const Icon(Icons.phone_callback_outlined),
            Text(contact.time)
          ],
        )
      ],
    );
  }
}
