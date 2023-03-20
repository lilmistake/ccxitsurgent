import 'package:ccxitsurgent/pages/pages.dart';
import 'package:flutter/material.dart';
import 'core/theme.dart';
import 'package:provider/provider.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        )
      ],
      child: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Provider.of<ThemeProvider>(context).getTheme,
        debugShowCheckedModeBanner: false,
        home: const NotificationPage());
  }
}
