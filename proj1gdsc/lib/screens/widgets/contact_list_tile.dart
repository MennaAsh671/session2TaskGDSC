import 'package:flutter/material.dart';

import '../../entities/contacts.dart';
import '../../utils/generalutils.dart';

class ContactListTile extends StatelessWidget {
  const ContactListTile({
    super.key,
    required this.contact,
    this.isUser = false,
  });

  final Contact contact;
  final bool isUser;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(GeneralUtilities.getUniqueAvatarUrl()),
        radius: 40,
      ),
      title: Text(contact.name),
      subtitle: const Text("0x1224243555"),
      trailing: (isUser)
          ? null
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(Icons.phone_callback_outlined),
                Text(contact.time),
              ],
            ),
    );
  }
}
