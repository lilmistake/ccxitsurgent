import 'package:flutter/material.dart';

enum Status {
  available,
  busy,
  dnd,
}

enum Priority { low, medium, high }

Color getPriorityColor(Priority priority) {
  switch (priority) {
    case Priority.low:
      return Colors.green;
    case Priority.medium:
      return Colors.orange;
    case Priority.high:
      return Colors.red;
    default:
      return Colors.grey;
  }
}

Color getStatusColor(Status status) {
  switch (status) {
    case Status.available:
      return Colors.green;
    case Status.busy:
      return Colors.yellow;
    case Status.dnd:
      return Colors.red;
  }
}

IconData getStatusIcon(Status status) {
  switch (status) {
    case Status.available:
      return Icons.circle;
    case Status.busy:
      return Icons.watch_later_sharp;
    case Status.dnd:
      return Icons.do_not_disturb_on;
  }
}
