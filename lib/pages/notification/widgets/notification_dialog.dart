import 'package:flutter/material.dart';
import 'package:ccxitsurgent/models/notification_model.dart';

class NotificationDialog extends StatelessWidget {
  const NotificationDialog({super.key, required this.notification});
  final NotificationModel notification;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: IntrinsicHeight(
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        shape: BoxShape.circle),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(999),
                        child: Image.network(
                          notification.sender.avatar,
                          width: 50,
                          filterQuality: FilterQuality.medium,
                        )),
                  ),
                  Expanded(
                    child: FittedBox(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.scaleDown,
                      child: Column(
                        children: [
                          Text(
                            notification.sender.name,
                            style: const TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                child: Text(notification.subject),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.replay,
                          color: Colors.blue,
                        ),
                        Text(" Remind me later")
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                        Text(" Ignore")
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
