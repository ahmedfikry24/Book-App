import 'package:book_app/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomAppBar(),
      ],
    );
  }
}
