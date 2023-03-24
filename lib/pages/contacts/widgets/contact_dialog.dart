import 'package:ccxitsurgent/models/user_model.dart';
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
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(99999),
                                child: Container(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  child: Image.network(
                                    user.avatar,
                                    filterQuality: FilterQuality.medium,
                                    width: 75,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 2,
                                right: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          strokeAlign: 0,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .background,
                                          width: 3),
                                      color: Colors.green,
                                      shape: BoxShape.circle),
                                  width: 18,
                                  height: 18,
                                ),
                              )
                            ],
                          ),
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
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Theme.of(context).colorScheme.secondary),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        padding: const EdgeInsets.all(5),
                        child: IntrinsicHeight(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _contactButtons(
                                    icon: Icons.call, label: "Call"),
                                const VerticalDivider(),
                                _contactButtons(
                                    icon: Icons.mail, label: "E-mail"),
                                const VerticalDivider(),
                                _contactButtons(
                                    icon: Icons.message, label: "Message"),
                              ]),
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
