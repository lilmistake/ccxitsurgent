import 'package:ccxitsurgent/models/notification_model.dart';
import 'package:ccxitsurgent/widgets/profile_picture.dart';
import 'package:flutter/material.dart';
import 'notification_dialog.dart';

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({super.key, required this.notification});
  final NotificationModel notification;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) => NotificationDialog(
                  notification: notification,
                ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            ProfilePicture(
              user: notification.sender,
              width: 50,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notification.sender.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text("needs to urgently get in touch"),
              ],
            ),
            const Expanded(child: SizedBox()),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.close,
                  color: Theme.of(context).colorScheme.onPrimary,
                ))
          ],
        ),
      ),
    );
  }
}
