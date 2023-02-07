import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/Logo.png'),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'read books for free',
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
