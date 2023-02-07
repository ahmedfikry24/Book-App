import 'package:flutter/material.dart';

import 'features/splash/presentation/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: const Color(0xff100B20)),
      home: const SplashScreen(),
    );
  }
}
