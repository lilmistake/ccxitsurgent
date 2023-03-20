import 'dart:math';
import 'package:flutter/material.dart';

class ContactContainer extends StatelessWidget {
  const ContactContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: Theme.of(context).colorScheme.background,
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(99999),
            child: Image.network(
              "http://xsgames.co/randomusers/assets/avatars/pixel/${Random().nextInt(53).toString()}.jpg",
              filterQuality: FilterQuality.medium,
              width: 50,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text("Lorem Ipsum"),
          const Expanded(child: SizedBox()),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, color: Theme.of(context).colorScheme.onPrimary,))
        ],
      ),
    );
  }
}
