import 'package:bookly_app/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 3,
        ),
        const Text(
          'R  e  a  d    F  r  e  e    B  o  o  k  s',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
