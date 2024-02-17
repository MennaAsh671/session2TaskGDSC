import 'package:proj1gdsc/utils/generalutils.dart';

class Contact {
  final String imageUrl;
  final String name;
  final String time;
  Contact({required this.imageUrl, required this.name, required this.time});
  static List<Contact> getMockContactData() {
    return [
      Contact(
          imageUrl: GeneralUtilities.getUniqueAvatarUrl(),
          name: "Ahmed",
          time: "6:22"),
      Contact(
          imageUrl: GeneralUtilities.getUniqueAvatarUrl(),
          name: "Maria",
          time: "5:22"),
      Contact(
          imageUrl: GeneralUtilities.getUniqueAvatarUrl(),
          name: "Laila",
          time: "12:22"),
      Contact(
          imageUrl: GeneralUtilities.getUniqueAvatarUrl(),
          name: "Menna",
          time: "7:30"),
      Contact(
          imageUrl: GeneralUtilities.getUniqueAvatarUrl(),
          name: "Manona",
          time: "7:57"),
      Contact(
          imageUrl: GeneralUtilities.getUniqueAvatarUrl(),
          name: "Fay7a2",
          time: "5:22")
    ];
  }
}
