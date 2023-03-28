import 'dart:convert';
import 'dart:math';
import 'package:ccxitsurgent/models/enums.dart';
import 'package:ccxitsurgent/models/notification_model.dart';
import 'user_model.dart';
import 'package:http/http.dart' as http;

List<User> users = [];
List<NotificationModel> notifs = [];

Future<List<NotificationModel>> getRandomNotifs(int size) async {
  List<User> users = await getRandomUsers(size);
  if (notifs.isNotEmpty && size <= notifs.length) {
    return notifs.sublist(0, size);
  }
  for (User user in users) {
    notifs.add(NotificationModel(
        priority: randomPriority(),
        sender: user,
        subject: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
        ts: DateTime.now().millisecondsSinceEpoch));
  }
  return notifs;
}

Future<List<User>> getRandomUsers(int size) async {
  if (users.isNotEmpty && size <= users.length) return users.sublist(0, size);
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
        status: randomStatus()));
  }
  return users;
}

Priority randomPriority() =>  Priority.values.elementAt(Random().nextInt(Priority.values.length));
Status randomStatus() => Status.values.elementAt(Random().nextInt(Status.values.length));