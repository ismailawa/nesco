import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nesco_app/features/authentication/views/login_sceen.dart';
import 'package:nesco_app/features/bottom%20navigation/bottom_navigation.dart';

import 'features/onboarding screen/view/onboarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnboardingScreen(),
      getPages: [
        GetPage(name: '/loginPage', page: () => const LoginScreen()),
        GetPage(name: '/bottomNavigation', page: () => BottomNavigationScreen())
      ],
    );
  }
}
