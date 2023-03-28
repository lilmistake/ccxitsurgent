import 'package:ccxitsurgent/models/user_model.dart';
import 'package:ccxitsurgent/widgets/profile_picture.dart';
import 'package:flutter/material.dart';

class ContactDialog extends StatelessWidget {
  const ContactDialog({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _closeButton(context),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).colorScheme.background),
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(15),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_vert)),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ProfilePicture(user: user),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          user.name,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.red,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Theme.of(context).colorScheme.secondary),
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(Icons.call),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Request call",
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Theme.of(context).colorScheme.secondary),
                          padding: const EdgeInsets.all(10),
                          constraints: const BoxConstraints(minHeight: 100),
                          child: TextField(
                            cursorColor:
                                Theme.of(context).colorScheme.onBackground,
                            maxLength: 100,
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(0),
                                border: InputBorder.none,
                                hintText:
                                    "Enter personal note (only visible to you)"),
                            maxLines: 3,
                          ))
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget _contactButtons(
      {required IconData icon, required String label, Function()? action}) {
    return Column(
      children: [
        IconButton(
            constraints: const BoxConstraints(),
            padding: EdgeInsets.zero,
            onPressed: action,
            icon: Icon(
              icon,
              size: 20,
            )),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        )
      ],
    );
  }

  Container _closeButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).colorScheme.secondary),
      child: CloseButton(
        color: Theme.of(context).colorScheme.onSecondary,
      ),
    );
  }
}
