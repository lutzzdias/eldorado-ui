import 'package:eldorado/src/common/drawer/drawer_tile.dart';
import 'package:eldorado/src/common/logo_background.dart';
import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: CustomColors.lightYellow,
        child: Stack(
          children: [
            const LogoBackground(
              alignment: Alignment.centerRight,
            ),
            Container(
              decoration: BoxDecoration(
                color: CustomColors.lightYellow.withAlpha(200),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Sizes.p12,
                vertical: Sizes.p20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icon_and_name.svg',
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  DrawerTile(
                    title: 'Tela Inicial',
                    icon: Icons.home,
                    onPressed: () {},
                  ),
                  DrawerTile(
                    title: 'Gestão da APR',
                    icon: Icons.upload_file,
                    onPressed: () {},
                  ),
                  DrawerTile(
                    title: 'Gestão da PT',
                    icon: Icons.upload_file,
                    onPressed: () {},
                  ),
                  DrawerTile(
                    title: 'Dados do Usuário',
                    icon: Icons.person_rounded,
                    onPressed: () {},
                  ),
                  const Spacer(),
                  Divider(
                    thickness: 3,
                    indent: MediaQuery.of(context).size.width * 0.05,
                    endIndent: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    'Eldorado PT APR Digital\n'
                    'CIS - versão 1.0',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: CustomColors.darkGreen.withAlpha(125),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
