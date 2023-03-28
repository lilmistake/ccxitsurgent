import 'package:ccxitsurgent/models/user_model.dart';
import 'package:ccxitsurgent/widgets/profile_picture.dart';
import 'package:flutter/material.dart';
import 'contact_dialog.dart';

class ContactContainer extends StatelessWidget {
  const ContactContainer({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet<dynamic>(
            backgroundColor: Colors.transparent,
            isScrollControlled: true,
            context: context,
            builder: (context) => ContactDialog(user: user),
            useRootNavigator: true);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            ProfilePicture(
              user: user,
              width: 50,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(user.name),
          ],
        ),
      ),
    );
  }
}
