import 'package:get/get.dart';

import '../features/authentication/views/login_sceen.dart';
import '../features/bottom navigation/bottom_navigation.dart';

final pages = [
  GetPage(name: '/loginPage', page: () => const LoginScreen()),
  GetPage(name: '/bottomNavigation', page: () => BottomNavigationScreen())
];
