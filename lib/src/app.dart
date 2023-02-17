import 'package:eldorado/src/common/default_background.dart';
import 'package:eldorado/src/features/epc/presentation/register_epc_screen.dart';
import 'package:eldorado/src/features/listing/listing_screen.dart';
import 'package:eldorado/src/features/login/login_screen.dart';
import 'package:eldorado/src/features/observation/presentation/add_observation/add_observation_screen.dart';
import 'package:eldorado/src/features/observation/presentation/list_observations/list_observations_screen.dart';
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
            return MaterialPageRoute(
                builder: (_) => const ListObservationsScreen());
          case '/base':
            return MaterialPageRoute(builder: (_) => DefaultBackground());
          case '/login':
            return MaterialPageRoute(builder: (_) => const LoginScreen());
          case '/listing':
            return MaterialPageRoute(builder: (_) => ListingScreen());
          case '/register_epc':
            return MaterialPageRoute(builder: (_) => RegisterEpcScreen());
          case '/observation/list':
            return MaterialPageRoute(
                builder: (_) => const ListObservationsScreen());
          case '/observation/add':
            return MaterialPageRoute(
                builder: (_) => const AddObservationScreen());
          default:
            return MaterialPageRoute(builder: (_) => DefaultBackground());
        }
      },
    );
  }
}
