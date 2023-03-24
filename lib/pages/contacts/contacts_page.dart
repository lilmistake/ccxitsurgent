import 'package:ccxitsurgent/core/icons.dart';
import 'package:ccxitsurgent/models/test_data.dart';
import 'package:ccxitsurgent/pages/contacts/widgets/contacts_container.dart';
import 'package:ccxitsurgent/pages/contacts/widgets/contacts_searchbar.dart';
import 'package:ccxitsurgent/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:ccxitsurgent/widgets/navbar.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _titleBlock(context),
            const SearchBar(),
            FutureBuilder(
              future: getRandomUsers(10),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Loading();
                }
                return Column(
                    children: snapshot.data!
                        .map((e) => ContactContainer(user: e))
                        .toList());
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }

  Padding _titleBlock(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              "Contacts",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 30),
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(999),
            onTap: () {},
            child: Container(
                padding: const EdgeInsets.all(12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    shape: BoxShape.circle),
                child: customIcon(
                    svg: CustomIcons.dnd, color: Colors.red, width: 20)),
          ),
        ],
      ),
    );
  }
}
