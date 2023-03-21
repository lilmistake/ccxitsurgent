import 'dart:convert';
import 'package:ccxitsurgent/models/enums.dart';
import 'user_model.dart';
import 'package:http/http.dart' as http;

List<User> users = [];

Future<List<User>> getRandomUsers(int size) async {
  if (users.isNotEmpty) return users;
  Uri uri =
      Uri.parse("https://random-data-api.com/api/users/random_user?size=$size");
  var response = await http.get(uri);
  List res = jsonDecode(response.body);
  for (Map doc in res) {
    users.add(User(
        id: doc['password'],
        avatar: doc['avatar'],
        name: "${doc['first_name']} ${doc['last_name']}",
        contactDetails:
            ContactDetails(email: [doc['email']], phone: [doc['phone_number']]),
        status: Status.available));
  }
  return users;
}
