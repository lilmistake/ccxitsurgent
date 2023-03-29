import 'package:ccxitsurgent/models/enums.dart';
import 'package:flutter/material.dart';
import 'package:ccxitsurgent/models/user_model.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture(
      {super.key,
      required this.user,
      this.width = 75,
      this.includeStatus = true});
  final double? width;
  final User user;
  final bool? includeStatus;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(99999),
          child: Container(
            color: Theme.of(context).colorScheme.secondary,
            child: Image.network(
              user.avatar,
              filterQuality: FilterQuality.medium,
              width: width,
            ),
          ),
        ),
        if (includeStatus!)
          Positioned(
            bottom: width! / 38,
            right: width! / 38,
            child: Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle),
              child: Icon(
                getStatusIcon(user.status),
                size: width! / 3.5,
                color: getStatusColor(user.status),
              ),
            ),
          )
      ],
    );
  }
}
