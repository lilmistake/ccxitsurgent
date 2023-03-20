import 'package:ccxitsurgent/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:ccxitsurgent/widgets/navbar.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: const Text(
              "Settings",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Column(
              children: [
                settingItem(context, "Set Status", Icons.remove_red_eye, () {}),
                settingItem(context, "Theme", Icons.dark_mode, () {
                  Provider.of<ThemeProvider>(context, listen: false)
                      .switchTheme();
                }),
                settingItem(context, "Privacy Settings", Icons.lock, () {}),
                settingItem(context, "Account", Icons.person, () {}),
                const Expanded(child: SizedBox()),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.logout,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          flex: 2,
                          child: Text(
                            "Logout",
                          ))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const NavBar(),
    );
  }

  InkWell settingItem(
      BuildContext context, String title, IconData icon, Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(
              width: 20,
            ),
            Expanded(
                flex: 2,
                child: Text(
                  title,
                ))
          ],
        ),
      ),
    );
  }
}
