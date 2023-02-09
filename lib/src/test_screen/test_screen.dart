import 'package:eldorado/src/base/base_screen.dart';
import 'package:eldorado/src/common/drawer/custom_drawer.dart';
import 'package:eldorado/src/common/footer/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseScreen(),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const CustomNavBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.catching_pokemon),
            label: 'Jogo do bicho',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wifi),
            label: 'Wifi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: 'Download',
          ),
        ],
        screenNames: [
          '/base',
          '/listing',
          '/listing',
          '/listing',
          '/listing',
        ],
      ),
    );
  }
}
