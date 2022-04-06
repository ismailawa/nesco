import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nesco_app/constants/colors.dart';
import 'package:nesco_app/features/Home%20dashboard/view/home_screen.dart';
import 'package:nesco_app/features/notification/view/notification_screen.dart';
import 'package:nesco_app/features/profile/view/profile_screen.dart';
import 'package:nesco_app/features/transactions/views/transaction_screen.dart';

class BottomNavigationScreen extends StatelessWidget {
  final NavController navController = Get.put(NavController());
  final List<Widget> screenContents = [
    const HomePage(),
    const TransactionScreen(),
    const NotificationScreen(),
    const ProfileScreen()
  ];

  BottomNavigationScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: Obx(
          () => Center(
            child: screenContents.elementAt(navController.selectedIndex),
          ),
        ),
        bottomNavigationBar: Obx(() => Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38, spreadRadius: 0, blurRadius: 10),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: BottomNavigationBar(
                  selectedLabelStyle: GoogleFonts.roboto(
                      textStyle:
                          const TextStyle(color: Colors.white, fontSize: 8)),
                  backgroundColor: lblue,
                  selectedItemColor: white,
                  unselectedItemColor: grey,
                  type: BottomNavigationBarType.fixed,
                  elevation: 10,
                  unselectedFontSize: 10,
                  items: [
                    BottomNavigationBarItem(
                      icon: Container(
                          height: MediaQuery.of(context).size.height * 0.036,
                          width: MediaQuery.of(context).size.width * 0.09,
                          decoration: BoxDecoration(
                              color: grey,
                              borderRadius: BorderRadius.circular(15)),
                          child: const Icon(Icons.home)),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                            height: MediaQuery.of(context).size.height * 0.036,
                            width: MediaQuery.of(context).size.width * 0.09,
                            decoration: BoxDecoration(
                                color: grey,
                                borderRadius: BorderRadius.circular(15)),
                            child: Icon(Icons.transform_outlined)),
                      ),
                      label: 'Transactions',
                    ),
                    BottomNavigationBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                            height: MediaQuery.of(context).size.height * 0.036,
                            width: MediaQuery.of(context).size.width * 0.09,
                            decoration: BoxDecoration(
                                color: grey,
                                borderRadius: BorderRadius.circular(15)),
                            child: Icon(Icons.notifications)),
                      ),
                      label: 'Notifications',
                    ),
                    BottomNavigationBarItem(
                        icon: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.036,
                              width: MediaQuery.of(context).size.width * 0.09,
                              decoration: BoxDecoration(
                                  color: grey,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Icon(Icons.person)),
                        ),
                        label: 'Profile',
                        backgroundColor: lblue),
                  ],
                  currentIndex: navController.selectedIndex,
                  onTap: (index) => navController.selectedIndex = index,
                ),
              ),
            )),
      ),
    );
  }
}

class NavController extends GetxController {
  final _selectedIndex = 0.obs;
  get selectedIndex => _selectedIndex.value;
  set selectedIndex(index) => _selectedIndex.value = index;
}
