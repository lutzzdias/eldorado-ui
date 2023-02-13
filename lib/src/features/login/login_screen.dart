import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/features/login/login_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const LoginBase(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SvgPicture.asset(
                  'assets/icon_and_name_white.svg',
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: '230.083.390-50',
                    hintStyle: TextStyle(color: Colors.white.withAlpha(100)),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white.withAlpha(50),
                    prefixIcon: const Icon(Icons.person),
                    prefixIconColor: Colors.white,
                  ),
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: '230.083.390-50',
                    hintStyle: TextStyle(color: Colors.white.withAlpha(100)),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white.withAlpha(50),
                    prefixIcon: const Icon(Icons.person),
                    prefixIconColor: Colors.white,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      textStyle: const TextStyle(fontWeight: FontWeight.w400),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text('Entrar'),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('Esqueceu sua senha?'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Não possui acesso?'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
