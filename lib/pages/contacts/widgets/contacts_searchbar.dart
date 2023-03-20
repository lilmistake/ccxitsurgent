import 'package:flutter/material.dart';
class SearchBar extends StatelessWidget {
  const SearchBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            splashRadius: 1,
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          Expanded(
            child: TextField(
              cursorColor: Theme.of(context).colorScheme.onBackground,
              decoration: const InputDecoration(
                hintText: "Search for a contact",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
