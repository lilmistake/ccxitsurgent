import 'enums.dart';
import 'user_model.dart';

class NotificationModel {
  final User sender;
  final int ts;
  final String subject;
  final Priority priority;

  NotificationModel(
      {required this.sender,
      required this.ts,
      required this.subject,
      required this.priority});
}
