import 'package:eldorado/src/base/base_screen.dart';
import 'package:eldorado/src/listing/listing_screen.dart';
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
            return MaterialPageRoute(builder: (_) => ListingScreen());
          default:
            return MaterialPageRoute(builder: (_) => BaseScreen());
        }
      },
    );
  }
}
