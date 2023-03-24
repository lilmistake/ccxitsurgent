import 'package:flutter/material.dart';
import 'package:ccxitsurgent/core/icons.dart';
import 'package:ccxitsurgent/pages/pages.dart';
// todo: refactor
class NavBar extends StatefulWidget {
  const NavBar({super.key});
  static final List<Map<String, Widget>> items = [
    {CustomIcons.people: const ContactsPage()},
    {CustomIcons.notifications: const NotificationPage()},
    {'profile': const SettingsPage()}
  ];

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  static int currentIndex = 1;

  List<BottomNavigationBarItem> navItemBuilder() {
    return NavBar.items
        .sublist(0, NavBar.items.length - 1)
        .map((e) => BottomNavigationBarItem(
            activeIcon: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    shape: BoxShape.circle),
                child: customIcon(
                    svg: e.keys.first,
                    color: Theme.of(context).colorScheme.onSecondary,
                    width: 20)),
            icon: Container(
                padding: const EdgeInsets.all(10),
                child: customIcon(
                    svg: e.keys.first,
                    color: Theme.of(context).colorScheme.onSecondary,
                    width: 20)),
            label: ""))
        .toList();
  }

  void navigator(context) {
    Navigator.of(context).push(PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return NavBar.items[currentIndex].values.first;
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(highlightColor: Colors.transparent),
      child: BottomNavigationBar(
          currentIndex: currentIndex,
          backgroundColor: Theme.of(context).colorScheme.background,
          elevation: 0,
          onTap: (value) {
            setState(() {
              currentIndex = value;
              navigator(context);
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            ...navItemBuilder(),
            BottomNavigationBarItem(
              label: "",
              icon: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (currentIndex == NavBar.items.length - 1)
                      ? Theme.of(context).colorScheme.secondary
                      : null,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(99999),
                  child: Image.network(
                    "http://xsgames.co/randomusers/assets/avatars/pixel/1.jpg",
                    filterQuality: FilterQuality.medium,
                    width: 30,
                  ),
                ),
              ),
            )
          ]),
    );
  }
}
