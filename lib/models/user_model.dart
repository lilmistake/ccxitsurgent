import 'enums.dart';

class User {
  final String id;
  final String name;
  final String avatar;
  final Status status;
  final ContactDetails contactDetails;
  User(
      {required this.id,
      required this.name,
      required this.avatar,
      required this.contactDetails,
      required this.status});
}

class ContactDetails {
  final List<String> phone;
  final List<String>? email;
  ContactDetails({this.phone = const [], this.email = const []});
}
