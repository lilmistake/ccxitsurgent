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
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(99999),
                  child: Container(
                    color: Theme.of(context).colorScheme.secondary,
                    child: Image.network(
                      user.avatar,
                      filterQuality: FilterQuality.medium,
                      width: 100,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    user.name,
                    style: const TextStyle(fontSize: 25),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.block,
                            color: Colors.grey,
                          ),
                        ),
                        const Text("Block")
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.person_add,
                            color: Colors.grey,
                          ),
                        ),
                        const Text("Contact")
                      ],
                    )
                  ],
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Theme.of(context).colorScheme.secondary),
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    constraints: const BoxConstraints(minHeight: 100),
                    child: TextField(
                      cursorColor: Theme.of(context).colorScheme.onBackground,
                      maxLength: 100,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          border: InputBorder.none,
                          hintText:
                              "Enter personal note (only visible to you)"),
                      maxLines: 3,
                    )),
              ],
            ),
          ),
        ],
      ),
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
