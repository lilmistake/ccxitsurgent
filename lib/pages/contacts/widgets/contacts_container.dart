import 'package:ccxitsurgent/models/user_model.dart';
import 'package:flutter/material.dart';

class ContactContainer extends StatelessWidget {
  const ContactContainer({super.key, required this.user});
  final User user;

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
              user.avatar,
              filterQuality: FilterQuality.medium,
              width: 50,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(user.name),
          const Expanded(child: SizedBox()),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Theme.of(context).colorScheme.onPrimary,
              ))
        ],
      ),
    );
  }
}
