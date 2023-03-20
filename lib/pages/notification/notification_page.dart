import 'package:flutter/material.dart';
import 'package:ccxitsurgent/core/icons.dart';
import 'package:ccxitsurgent/widgets/navbar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widgets/notification_container.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ListView(
        children: [
          _titleBlock(context),
          ...List.filled(5, const NotificationContainer())
        ],
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
                child: SvgPicture.string(
                  CustomIcons.eraser,
                  width: 20,
                  colorFilter:
                      const ColorFilter.mode(Colors.red, BlendMode.srcIn),
                )),
          ),
        ],
      ),
    );
  }
}
