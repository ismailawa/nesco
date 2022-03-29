import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nesco_app/widgets/custom_button_widget.dart';

import '../../../constants/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/bolt.png',
              height: 50,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: offBlue),
                      color: offBlue),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1.0),
                        child: Container(
                          height: 45,
                          width: 100,
                          decoration: BoxDecoration(
                              color: blue,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              'NESCOID',
                              style: GoogleFonts.roboto(
                                  color: white, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextFormField(),
                      ))
                    ],
                  ),
                ),
                const SizedBox(),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CustomButton(
                text: 'Login',
                onPressed: () {
                  Get.toNamed('bottomNavigation');
                })
          ],
        ),
      ),
    );
  }
}