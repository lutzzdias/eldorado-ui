import 'package:eldorado/src/common/default_background.dart';
import 'package:eldorado/src/common/drawer/custom_drawer.dart';
import 'package:eldorado/src/common/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultBackground(),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const CustomNavBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.keyboard),
            label: 'Keyboard',
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
