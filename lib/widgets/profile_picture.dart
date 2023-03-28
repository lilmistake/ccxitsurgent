import 'package:ccxitsurgent/models/enums.dart';
import 'package:flutter/material.dart';
import 'package:ccxitsurgent/models/user_model.dart';

Map<Status, Color> statusColor = {
  Status.available: Colors.green,
  Status.busy: Colors.yellow,
  Status.dnd: Colors.red
};

class ProfilePicture extends StatelessWidget {
  const ProfilePicture(
      {super.key, required this.user, this.width=75, this.includeStatus = true});
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
            bottom: width!/38,
            right: width!/38,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      strokeAlign: 0,
                      color: Theme.of(context).colorScheme.background,
                      width: 3),
                  color: statusColor[user.status],
                  shape: BoxShape.circle),
              width: width! / 4.16, // just a random factor
              height: width! / 4.16, // just a random factor
            ),
          )
      ],
    );
  }
}
