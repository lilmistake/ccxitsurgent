import 'package:ccxitsurgent/models/notification_model.dart';
import 'package:flutter/material.dart';

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({super.key, required this.notification});
  final NotificationModel notification;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(99999),
            child: Image.network(
              notification.sender.avatar,
              filterQuality: FilterQuality.medium,
              width: 50,
            ),
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
    );
  }
}
