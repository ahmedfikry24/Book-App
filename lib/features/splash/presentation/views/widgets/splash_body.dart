import 'package:book_app/features/home/presentation/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constant.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();

    initAnimation();

    goToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

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
        AnimatedBuilder(
            animation: animation,
            builder: (context, w) {
              return SlideTransition(
                position: animation,
                child: const Text(
                  'read books for free',
                  textAlign: TextAlign.center,
                ),
              );
            }),
      ],
    );
  }

  initAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation = Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void goToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(const HomeScreen(),
          transition: Transition.fade,
          duration: AppConstant.navigationDuration);
    });
  }
}
