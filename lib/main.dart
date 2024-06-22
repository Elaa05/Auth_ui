import 'package:auth_ui/presentation/screens/login_screen.dart';
import 'package:auth_ui/presentation/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: (ThemeData(fontFamily: 'Poppins')),
      debugShowCheckedModeBanner: false ,
      title: 'Auth_ui',
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
      // '/register': (context) => RegisterScreen(),

      },
    );
  }
}
