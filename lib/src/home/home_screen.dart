import 'package:eldorado/src/common/rounded_container.dart';
import 'package:eldorado/src/common/custom_drawer.dart';
import 'package:eldorado/src/common/logo_background.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: const CustomDrawer(),
        body: Stack(
          children: [
            RoundedContainer(
              width: MediaQuery.of(context).size.width + 250,
            ),
            const LogoBackground(),
            Positioned(
              left: 10,
              top: 10,
              child: IconButton(
                icon: const Icon(Icons.menu_rounded),
                color: CustomColors.yellow,
                iconSize: 40,
                onPressed: () => scaffoldKey.currentState!.openDrawer(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
