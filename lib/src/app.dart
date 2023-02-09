import 'package:eldorado/src/base/base_screen.dart';
import 'package:eldorado/src/listing/listing_screen.dart';
import 'package:eldorado/src/test_screen/test_screen.dart';
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
            return MaterialPageRoute(builder: (_) => const TestScreen());
          case '/listing':
            return MaterialPageRoute(builder: (_) => ListingScreen());
          case '/base':
            return MaterialPageRoute(builder: (_) => BaseScreen());
          default:
            return MaterialPageRoute(builder: (_) => BaseScreen());
        }
      },
    );
  }
}
