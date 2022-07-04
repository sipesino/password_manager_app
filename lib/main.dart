import 'package:flutter/material.dart';
import 'package:password_manager_app/screens/main_screen.dart';
import 'package:password_manager_app/screens/login_screen.dart';
import 'package:password_manager_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: darkThemeData(context),
      darkTheme: darkThemeData(context),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/': (context) => const MainScreen(),
      },
    );
  }
}
