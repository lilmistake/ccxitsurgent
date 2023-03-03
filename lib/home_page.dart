import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("ITSURGENT!"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(),
    );
  }
}
