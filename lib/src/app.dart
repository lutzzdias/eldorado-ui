import 'package:eldorado/src/base/base.dart';
import 'package:eldorado/src/features/listing/listing_screen.dart';
import 'package:eldorado/src/features/login/login_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eldorado',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => const LoginScreen());
          case '/listing':
            return MaterialPageRoute(builder: (_) => ListingScreen());
          case '/base':
            return MaterialPageRoute(builder: (_) => Base());
          case '/login':
            return MaterialPageRoute(builder: (_) => const LoginScreen());
          default:
            return MaterialPageRoute(builder: (_) => Base());
        }
      },
    );
  }
}
