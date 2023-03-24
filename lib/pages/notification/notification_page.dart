import 'package:ccxitsurgent/models/test_data.dart';
import 'package:flutter/material.dart';
import 'package:ccxitsurgent/core/icons.dart';
import 'package:ccxitsurgent/widgets/navbar.dart';
import '../../widgets/loading_indicator.dart';
import 'widgets/notification_container.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _titleBlock(context),
            FutureBuilder(
              future: getRandomNotifs(5),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Loading();
                }
                ;

                return Column(
                    children: snapshot.data!
                        .map((e) => NotificationContainer(notification: e))
                        .toList());
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }

  Widget _titleBlock(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              "Notifications",
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
                    svg: CustomIcons.eraser, color: Colors.red, width: 20)),
          ),
        ],
      ),
    );
  }
}
