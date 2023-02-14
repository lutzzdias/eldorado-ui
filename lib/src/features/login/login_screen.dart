import 'package:eldorado/src/common/link_text_button.dart';
import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/features/login/login_base.dart';
import 'package:eldorado/src/features/login/login_button.dart';
import 'package:eldorado/src/features/login/login_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            const LoginBase(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SvgPicture.asset(
                      'assets/icon_and_name_white.svg',
                    ),
                    gapH64,
                    const LoginFormField(
                      prefixIcon: Icons.person,
                      hintText: '230.083.390-50',
                    ),
                    gapH16,
                    const LoginFormField(
                      prefixIcon: Icons.lock,
                      hintText: '230.083.390-50',
                      suffixIcon: Icons.remove_red_eye,
                    ),
                    gapH64,
                    const SizedBox(
                      height: 50,
                      child: LoginButton(
                        title: 'Entrar',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LinkTextButton(
                          text: 'Esqueceu sua senha?',
                          onPressed: () =>
                              debugPrint('clicked forgot password'),
                        ),
                        LinkTextButton(
                          text: 'Não possui acesso?',
                          onPressed: () => debugPrint('clicked no access'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
