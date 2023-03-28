import 'package:ccxitsurgent/models/enums.dart';
import 'package:ccxitsurgent/widgets/profile_picture.dart';
import 'package:flutter/material.dart';
import 'package:ccxitsurgent/models/notification_model.dart';
import 'package:intl/intl.dart';

class NotificationDialog extends StatelessWidget {
  const NotificationDialog({Key? key, required this.notification})
      : super(key: key);
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
                  ProfilePicture(user: notification.sender, width: 50,),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            notification.sender.name,
                            style: const TextStyle(fontSize: 20),
                          ),
                          Text(
                            DateFormat("EEE, h:m").format(
                                DateTime.fromMillisecondsSinceEpoch(
                                    notification.ts)),
                            style: const TextStyle(fontSize: 12),
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
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: getPriorityColor(notification.priority)),
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        '${notification.priority.toString().split('.').last} priority',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.close, color: Colors.red),
                    label: const Text('Ignore',
                        style: TextStyle(color: Colors.red)),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.check_circle, color: Colors.green),
                    label: const Text('Accept',
                        style: TextStyle(color: Colors.green)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
